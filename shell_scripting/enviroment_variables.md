# ENVIROMENT VARIABLE

This variables hold information that can be used by the programs and by other shell

- there is two types of enviroment variables global and local

- the global variables can be pass to subprocess of the shell and other shell

- cannot be a space between the name of variable and the = sign and the = sign and the value

## List the global variable

to see the list of global enviroment variable the folloing commnds can be used.

```
env
```

```
printenv
```

## Global variable

to declara a global variable is necessary the uyse os the keywork export like in the commands below.

```
export var_name=test
```

or

```
var_name=test
export var_name
```

- maybe is good practice to use the name of global variable create in lowercase to diferentiate from the system global variables

## Local variable

to declara a local variable is like in the command below.

```
var_name=test
```

## Remove a variable

to remove a variable is like in the command below

```
unset var_name
```

## Access the value

to access the value of a variable like in the command echo is necessary the use of $ before the name of the variable

```
echo $var_name
```

## Array

can be use to store more than one value on the same variable

### Syntax

to creato an array

```
var_name_array=(val1 val2 val3)
```

to access an specific element(0 <= n <= size_of_array)

```
echo ${var_name_array[n]}
```

to see all the content of the array

```
echo ${var_name_array[*]}
```

to change a value

```
var_name_array[1]=banana
```

to remove a item

```
unset var_name_array[1]
```

to delete the array

```
unset var_name_array[*]
```

- the array is dynamic to add a item on the end just specify the next index

- the {} is to indicate to the command echo that the variable is an array