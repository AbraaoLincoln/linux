# FUNTIONS

## SYNTAX

```
function function_name {
    commands
}
```

or

```
function_name() {
    commands
}
```

## EXAMPLE

```
function say_hello {
    echo "Hello"
}

count=1

while [ $count -le 10 ]; do
    say_hello
    count=$[ $count + 1 ]
done
```

getting the return value from a function

```
function square {
    read -p "Enter an integer number: " number
    echo $[ $number * $number ]
}

result=`square`

echo "the result is: $result"
```