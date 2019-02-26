#!/usr/bin/python3
# -*- coding: utf-8 -*-

from api import *
import cgi

import cgitb
cgitb.enable()

print("Content-type: text/html\n\n")

# Edit group stats
# GET arguments:
# gid - group id
# eid - exercise id
# week - number of week

template = """
<!DOCTYPE HTML>
<html>
 <head>
  <title>Редактирование</title>
 </head>
 <body>
 <h1>%s</h1>
 <form action="saveStats.py">
  <input type="hidden" name="gid" value="">
 <input type="hidden" name="eid" value="">
 <input type="hidden" name="week" value="">
 <script>
  function $_GET( name ){
  name = name.replace(/[\[]/,"\\\[").replace(/[\]]/,"\\\]");
  var regexS = "[\\?&]"+name+"=([^&#]*)";
  var regex = new RegExp( regexS );
  var results = regex.exec( window.location.href );
  if( results == null )
    return "";
  else
    return results[1];
}
 document.getElementsByName('eid')[0].value = $_GET('eid');
  document.getElementsByName('gid')[0].value = $_GET('gid');
  document.getElementsByName('week')[0].value = $_GET('week');
  
 </script>
  <table border="1" width="25%%" cellpadding="5">
   <tr>
    <th>Испытуемый</th>
    <th>Результат</th>
   </tr>
   %s
 </table>

 <input type="submit" value="Обновить результаты">
 </form>

 </body>
</html>
"""

rowTemplate = '<tr><td>%s</td><td><input maxlength="25" size="8" name="%d" value="%s"></td></tr>'

def generateEditPage(eid, gid, week):
    gInfo = getGroupInfo(gid)
    table = ""
    for i in range(len(gInfo.members)):
        stat = getUserStats(gInfo.members[i], eid)[week]
        table += rowTemplate % (getUserName(gInfo.members[i]), i, stat if stat != None else '')
    title = gInfo.name + ' ' + getExerciseInfo(eid).name + ' Неделя ' + str(week + 1)
    return template % (title, table)

form = cgi.FieldStorage()
print(generateEditPage(int(form.getvalue("eid")), int(form.getvalue("gid")), int(form.getvalue("week"))))