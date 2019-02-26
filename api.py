# -*- coding: utf-8 -*-

import mysql.connector, json
from collections import namedtuple

con = mysql.connector.connect(user='MYSQL_USER', password='MYSQL_PASSWORD', host='DB_HOST', database='DB_NAME', autocommit=True)
cur = con.cursor()

# Various functions used by other scripts

CURRENT_WEEK = 4 # current week
WEEKS_COUNT = 5 # total weeks count

page = """
<!DOCTYPE HTML>
<html>

<head>
    <title>График</title>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    %s
</head>

<body>
    <div id="chart_div"></div>
</body>

</html>"""

js = """<script type="text/javascript">
    google.charts.load('current', {
        packages: ['corechart', 'line']
    });
    google.charts.setOnLoadCallback(drawBasic);

    function drawBasic() {
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Месяцы');
        %s
        data.addRows(%s);
        var options = {
            theme: 'material',
            interpolateNulls: true,
            title : '%s',
            vAxis: {
                ticks: [{v:%d, f:'Низкий уровень'}, {v:%d, f:'Средний уровень'}, {v:%d, f:'Высокий уровень'}]
            }
        };
        var chart = new google.visualization.LineChart(document.getElementById('chart_div'));
        chart.draw(data, options);
    }
</script>
"""

def getExerciseInfo(eid):
    cur.execute("SELECT * FROM `exercises` WHERE eid=%d;" % eid)
    info = cur.fetchone()
    if info == None:
        raise Exception("Unknown exercise")
    ExerciseInfo = namedtuple('ExerciseInfo', 'name low mid high lowadv midadv highadv hisb')
    return ExerciseInfo(info[1], info[2], info[3], info[4], info[5], info[6], info[7], info[8])

def getUserName(uid):
    cur.execute("SELECT (`name`) FROM `users` WHERE uid=%d;" % uid)
    info = cur.fetchone()
    if info == None:
        raise Exception("Unknown user")
    return info[0]

def getUserStats(uid, eid):
    cur.execute("SELECT * FROM `exercise%d_results` WHERE uid=%d;" % (eid, uid))
    stats = cur.fetchone()
    if stats == None:
        raise Exception("User stats for this exercise not found")
    return stats[1:WEEKS_COUNT + 1]

def getGroupInfo(gid):
    cur.execute("SELECT `name`, `members` FROM `groups` WHERE gid=%d;" % gid)
    info = cur.fetchone()
    if info == None:
        raise Exception("Unknown group")
    GroupInfo = namedtuple('GroupInfo', 'name members')
    return GroupInfo(info[0], tuple(json.loads(info[1])))

def editGroupStats(gid, eid, week, stats):
    groupMembers = getGroupInfo(gid).members
    for i in range(len(groupMembers)):
        cur.execute("UPDATE `exercise%d_results` SET `%d`=%s WHERE `uid`=%d;" % (eid, week, 'NULL' if stats[i] == None else str(stats[i]), groupMembers[i]))
        
def calculateLevel(uid, eid, week):
    eInfo = getExerciseInfo(eid)
    userStats = getUserStats(uid, eid)[week]
    level = -1
    if eInfo.hisb:
        if userStats >= eInfo.high:
            level = 2
        elif userStats >= eInfo.mid:
            level = 1
        else:
            level = 0
    else:
        if userStats <= eInfo.high:
            level = 2
        elif userStats <= eInfo.mid:
            level = 1
        else:
            level = 0
    return level

def getAdvices(eid, level):
    eInfo = getExerciseInfo(eid)
    if level == 0:
        return eInfo.lowadv
    if level == 1:
        return eInfo.midadv
    if level == 2:
        return eInfo.highadv    