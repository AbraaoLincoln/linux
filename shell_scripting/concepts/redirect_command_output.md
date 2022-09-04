# REDIRECT OUTPUT

the `` (backtick) or $() can be use to redirect the output of a command to someplace else.

- the `` (backtick) is the old way of doing command redirect

- the $() is the new way of doing command redirect

# EXAMPLES

```
day=`date`
echo "Today is: $day"
```

or

```
day=$(date +%d%m%y%)
echo "Today is: $day"
```