# FOR

## SYNTAX

for item in list; do
    comands
done

- the for comand can be use to iterate over a list of values

- the variable item recive one value of the list per iteration

## IFS

The enviroment variable IFS(Internal Field Separator) has a list of separators that the shell bash use to define de feild separatos, the default values are space, tab and newline.

If the values of list has space, one solution is to change the value of IFS to the separator that was used on the list and in the end of the sript change the value of IFS back to its defult.

```
IFSBACKUP=$IFS
IFS=$':'

for name in 'foo bar':foo:bar; do
    echo $name
done

IFS=$IFSBACKUP
```

## EXAMPLE

```
for lunch in pizza hamburger salad; do
    echo "huuum $item"
done
```