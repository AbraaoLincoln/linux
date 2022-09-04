# SHELL

the shell is a program that is a interface to the kernel of the system.

- is a text interface and interactive(it interpretes commands)

- the shell is the enviroment of execution of another programs

- the shell enviroment contains a set of enviroment variables

- the shell can be custimizer(through config files)

- the shell can be use by the user(interactive) ori by the system

# SCRIPT

The first line of the script has, the info of the to interpreter to use. If not specify the default shell will be used.

- #! follow by the location of the binary

- \# = Sharp, ! = Bang and #! = Shebang

- the file gets pass to the interpreter, like bash for instance

## Example

```
#!/bin/bash

echo "hello world
```

# BUILDIN COMMANDS

The shell bash has a set o commands, that can be used and dont need any external program to execute.

- the command _type_ can be used to check if a command is buildin command

```
type -a echo
```

- to get help about a buildin command or keyword, the _help_ can be used for this.

```
help echo
```

# '' VS ""

The '' couse variable to NOT get expanded(interpreting) while "" do.

- The $ before is operator to get the value of a variable.

```
greeting='hello'
echo "$greeting"
```

or

```
greeting='hello'
echo "${greeting}"
```

- the ${} syntax can be use to append text to a variable.

```
busy='work'
echo "${busy}ing"

hard='hard'
echo "${hard}${busy}"
```