#!/usr/bin/python3
# -*- coding: utf-8 -*-

from api import *
import cgi

import cgitb
cgitb.enable()

# Save stats
# GET arguments:
# gid - group id
# eid - exercise id
# week - number of week
# [0; n) - ordered results of ALL (!!!) members of the group (n - number of group members)

print("Content-type: text/html\n\n")

form = cgi.FieldStorage()
eid = int(form.getvalue("eid"))
gid = int(form.getvalue("gid"))
week = int(form.getvalue("week"))
groupMembers = getGroupInfo(gid).members
res = [None] * len(groupMembers)
for i in range(len(groupMembers)):
    res[i] = form.getvalue(str(i))
editGroupStats(gid, eid, week, tuple(res))
print("Успех!")