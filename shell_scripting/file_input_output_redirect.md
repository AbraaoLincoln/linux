# FILE INPUT AND OUTPUT REDIRECT

## Redirect the command output to a file

to redirect the output of a command to a file the operator > can be use

- the > overide the content of the file

- the >> add the content to the end of the file

## EXAMPLES

```
ls > file
```

```
ls >> file
```

## Redirect the content of a file to a command

to redirect the content of file to a command the operator < can be use

- the < redirect the content of file to a command

- the << use to do a inline redirect

## EXAMPLES

```
wc < file
```

```
wv << EOF #is it a text mark to indicate the begin and the end of the content, can be any string
line 1
line 2
EOF
```

```
# to redirect a string to a command
cat <<< "string"
```
