# CONDITIONAL

- the conditional test the exit status of a command, 0 mean true and anything between 1 adn 255 icnluse is false.

- the if statement allow boolean logic between the commands

## SYNTAX

```
if command #test the exit status of the command
then
    commands
fi
```

or

```
if command; then
    commands
fi
```

## Else

```
if command; then
    commands
else
    other commands
fi
```

## Elif

```
if command; then
    commands
elif command; then
    commands
else
    other commands
fi
```

## Boolean logic

```
# AND
if [ condition ] && [ condition ]; then
    commands
fi


# OR
if [ condition ] || [ condition ]; then
    commands
fi
```