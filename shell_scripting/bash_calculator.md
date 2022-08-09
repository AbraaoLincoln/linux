# BASH CALCULATOR

the bash calculator, enables do floating point calculations.

- do operation with integer and floating points

- accept simple variables and arrays

- coments c like style /* */

- accept if-then

- inbuild functions, like sqrt(num)

- the option -q dont show the welcome text

- enable variables declaration

## Acess

to access use to comand bc and to exit the quit command

## Floating points

to do operation with floating points the variable _scale_ need to be set to the quantity of number in the fraction part(after the dot)

- the defult value of _scale_ is 0.

### Examples

```
1 + 2
// result = 3

scale=2

1 + 2
// result = 3.00
```
# EXAMPLES

## Simple operation

```
var=`echo "scale=2; 2/5" | bc`
echo "result: $var"
```

## Complex operation

```
var1=6
var2=5
var3=4
var4=`bc << EOF
a1=($var1 * $var2)
b1=($var3 + $var1)
a1+b1
EOF
`
echo "result: $var4"
```