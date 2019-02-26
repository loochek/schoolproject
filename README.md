# schoolproject
Several scripts to manage results of PE exercises

# Database structure
- Required tables:
  - users
    - uid - (int) user id
    - name - (varchar) visible user name
  - groups
    - gid - (int) group id
    - name - (varchar) visible name
    - members - (json) JSON array of uids
  - exercises
    - eid - (int) exercise id
    - name - (varchar) visible name
    - low - (int) result which enough for low level participants
    - mid - (int) result which enough for middle level participants
    - high - (int) result which enough for high level participants
    - lowadv - (text) advices for low level participants
    - midadv - (text) advices for middle level participants
    - highadv - (text) advices for high level participants
    - hisb - (bool) true if higher result is better, else false
- Other tables:
  - exercise<i>_results:
    - Each exercise have to have it own table
    - uid - (int) user id
    - 0 - (int)
    - 1 - (int)
    - 2 - (int)
    - 3 - (int)
    - ... - (int) results for each week, number of collumns has to be equal to or higher than WEEKS_COUNT value in api.py file
    
**Note:** week 1 always have number 0, uids and gids can be any
