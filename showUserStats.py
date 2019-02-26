#!/usr/bin/python3
# -*- coding: utf-8 -*-

from api import *
import cgi, datetime

import cgitb
cgitb.enable()

# Generate user results page
# GET arguments:
# uid - user id
# Advices dependent on CURRENT_WEEK variable in api.py file

levels = ('Низкий', 'Средний', 'Высокий')

print("Content-type: text/html\n\n")
print("""
<head>
    <title>Статистика</title>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
</head>

<body>
""")

chart = """<script type="text/javascript">
    google.charts.load('current', {
        packages: ['corechart', 'line']
    });
    google.charts.setOnLoadCallback(drawBasic%d);

    function drawBasic%d() {
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
        var chart = new google.visualization.LineChart(document.getElementById('chart_div%d'));
        chart.draw(data, options);
    }
</script>
<body>
    <div id="chart_div%d"></div>
</body>
"""

def getUserStatsChartScript(uid, eid, chartId):
    userStats = getUserStats(uid, eid)
    userName, eInfo = getUserName(uid), getExerciseInfo(eid)
    collumns = "data.addColumn('number', '%s');" % userName
    rows = []
    for i in range(WEEKS_COUNT):
        rows.append(['Неделя %d' % (i + 1), userStats[i]])
    return chart % (chartId, chartId, collumns, json.dumps(rows), eInfo.name, eInfo.low, eInfo.mid, eInfo.high, chartId, chartId)

def showStats(uid, eid):
    print("<h2>%s</h2>" % getExerciseInfo(eid)[0])
    print(getUserStatsChartScript(uid, eid, eid))
    level = calculateLevel(uid, eid, CURRENT_WEEK)
    print("Ваш уровень на неделю %d: <b>%s</b>\n<div>%s</div>" % (CURRENT_WEEK + 1, levels[level], getAdvices(eid, level)))
    print("<hr></hr>")    

form = cgi.FieldStorage()
uid = int(form.getvalue("uid"))
print("<h1>%s</h1>" % getUserName(uid))
print("<hr></hr>")
showStats(uid, 1)
showStats(uid, 2)
showStats(uid, 3)
showStats(uid, 4)