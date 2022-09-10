# Tools

## /dev/null

It’s a special file, used to write. Whatever is write to /dev/null will be discarded.

```
id user &> /dev/null
```

## useradd

This command can be used to create or update a user information

```
man useradd
```

## passwd

This command can be used to create or update a user password

```
man passwd
```

## fold

This command can break in line in multplus lines

```
man fold
```

## shuf

This command generates random permutations

```
man shuf
```

## head

This command can be used to show only some part of file(start) and can be used to get the first letters of a line

```
man head
```

## basename

This command get the file name from a path, but it doesn't do any smart check(check if the file exists)

```
basename /test/file1
```

## dirname

This command get the dir name from a path, but it doesn't do any smart check

```
dirname /test/file1
```

## true

The true command always return a exit status of 0.

## sleep

This command delay a execution of a command for some time.

```
man sleep

sleep 1

sleep 1s

sleep .5
```