# UNITL

## SYNTAX

until test_comand; do
    comands
done

- while the exit status of test_comand not equals to 0 the comands get executed

- the test_comand needs to return exit status equals to 0 to stop the loop

## EXAMPLE

```
var=50

until [ $var -eq 0 ]; do
    echo $var
    var=$[ $var - 2 ]
done
```