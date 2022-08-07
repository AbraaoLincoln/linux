# INTERACTIVE SCRIPT

## READ

The command read, read data from the default input or another file descriptor

- the value read is store in deafult variable called REPLY or a variable informed

- the -p option is used when we want to show the message with the read command

- the -t option specify a timer in seconds of how much timer the command read shuold wait the user input

- the -nX option where X > 0 integer, we can especify the size of the input. The input is read and is not need to press enter because when the input get in the especify size it go to the next command

- the -s option, make that input dont show up on the terminal

## EXAMPLE

### Specifying a variavle

```
printf "Whats is your name? "
read name
echo "Hello $name"
```

### Using the default variable and the message with command read

```
read -p "Whats is your age? "
echo "Your are $REPLY years old"
```

### Using command read with a timer

```
echo "What fruit do you like? "
if read -t 2 fruit; then
    echo "The fruit $fruit was choose"
else
    echo "2 seconds has pass, be faster next time"
fi
```

### Specifying the size of the input

```
echo "Answer y or n, please\n"
read -n1 answer
case $answer in
    Y | y) echo -e "\nYour answer was yes";;
    N | n) echo -e "\nYour answer was not";;
    *) echo -e "\nYour answer was not valid";;
esac
```

### Silent input

```
echo "Enter your password"
read -s password
echo "The password is: $password"
```

### Reading from a file

```
lineCounter=1

cat ../interactive_script.md | while read line
do
    echo "Line: $lineCounter: $line"
    lineCounter=$[ $lineCounter + 1 ]
done 
```
