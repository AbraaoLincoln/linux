# USER INPUT

# COMANDLINE PARAMS

- the params is informed after the name of script

```
./script param1 param2 ... paramN
```

- The shell bash assing the param to spaceil variable called position parameters

- $0 name of the program

- from 1 to 9 the value can be acessed with $N($1, $2, ... $N) to 10 or more with $(N)

## VARIABLE $#

The variable $# is a spacial variable that holds the number of param pass to the script

## SHIFT

- move the values of parameters to the spacial variable of less value.

### EXAMPLE

if three params are passaed to the script they get store in $1, $2 and $3 respectively, then when done the shift the the value of $1 get discharted, the value of $2 gets move to $1, the value of $3 gets move to $2.

```
i=1

while [ -n "$1" ]; do
    echo "the parameter $i has the value: $1"
    i=$[ $i + 1 ]
    shift
done
```

# OPTIONS

options are latters tha change the behavior os a script

```
while [ -n "$1" ]; do
    case "$1" in
        -a) echo "option was selected: A";;
        -b) echo "option was selected: B";;
        -c) echo "option was selected: C";;
        -*) echo "option not valid";;
    esac
    shift
done
```