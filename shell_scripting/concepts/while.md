# WHILE

## SYNTAX

while test_comand; do
    comands
done

- while the exit status of test_comand equals to 0 the comands get executed

- the test_comand need to return exit status diferent of 0 to stop the loop

## EXAMPLE

```
var=100

while [ $var -gt 0 ]; do
    echo $var
    var=$[ $var - 1 ]
done
```