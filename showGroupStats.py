#!/usr/bin/python3
# -*- coding: utf-8 -*-

from api import *
import cgi, json

import cgitb
cgitb.enable()

print("Content-type: text/html\n\n")

# Draw chart of group results
# GET arguments:
# gid - group id
# eid - exercise id

def getGroupStatsChartScript(eid, gid):
    gInfo = getGroupInfo(gid)
    n = len(gInfo.members)
    results = []
    collumns = ""
    for i in gInfo.members:
        results.append(getUserStats(i, eid))
        collumns += "data.addColumn('number', '%s');\n" % getUserName(i)
    rows = []
    for i in range(WEEKS_COUNT):
        row = ['Неделя %d' % (i + 1)]
        for j in range(n):
            row.append(results[j][i])
        rows.append(row)
    eInfo = getExerciseInfo(eid)
    return js % (collumns, json.dumps(rows), eInfo.name + ' ' + gInfo.name, eInfo.low, eInfo.mid, eInfo.high)

form = cgi.FieldStorage()
print(page % getGroupStatsChartScript(json.loads(form.getvalue("eid")), json.loads(form.getvalue("gid"))))