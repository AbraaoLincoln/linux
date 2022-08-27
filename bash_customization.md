# Bash Customization

The variable PS1 founded in the file .bashrc contains a string with the format of the string that appears on the terminal

```
# the variable PS1 define its format
user@host:~/document $
```
After the string is decoded, it is expanded via parameter expansion, command substitution, arithmetic expansion, and quote removal, subject to the value of the promptvars shell option.

## Special Prompt Variables

We can use this variables to customize the PS1.

### User info

| variable | description |
|----------|-------------|
| \u | The username of the current user. |

### Host info

| variable | description |
|----------|-------------|
| \h | The hostname, first part |
| \H | The full hostname |

### Date and Time

| variable | description |
|----------|-------------|
| \d | The date, in "Weekday Month Date" format |
| \t | The time, in 24-hour HH:MM:SS format. |
| \T | The time, in 12-hour HH:MM:SS format. |
| \@ | The time, in 12-hour am/pm format. |

### Shell info

| variable | description |
|----------|-------------|
| \j | The number of jobs currently managed by the shell. |
| \l | The basename of the shell's terminal device name. |
| \s | The name of the shell, the basename of $0 |
| \v | The version of Bash |
| \V | The release of Bash, version + patchlevel |

### Directory info

| variable | description |
|----------|-------------|
| \w | The current working directory. |
| \W | The basename of $PWD. |


### Root Info

| variable | description |
|----------|-------------|
| \$ | If you are not root, inserts a "$"; if you are root, you get a "#"  (root uid = 0) |

### History info

| variable | description |
|----------|-------------|
| \\! | The history number of this command. |
| \\# | The command number of this command. |

### Extra

| variable | description |
|----------|-------------|
| \n | newline |
| \r | carriage return |
| \e | escape character, typically used with color difinition |
| \a | bell character |
| \\\ | a backslash |
| \\[ | Begin a sequence of non-printing characters. |
| \\] | End a sequence of non-printing characters. |

### Example

```
PS1="\t-\w: "
00:00:00-~/Documents:
```

## Colors

We can customize the color of the text(foreground) and the background, but we have a limited set of color to choose from.

To add color we put before the text, the color it should be, we have to use the notation of non-printing characters and put the color code in it, like: 

```
\[color_code\]text
```

### Colors code

| color | foregroun code | background code |
|-------|----------------|-----------------|
| Dark Gray | \e[30m | \e[40m |
| Red | \e[31m | \e[41m |
| Green | \e[32m | \e[42m |
| Yellow | \e[33m | \e[43m |
| Blue | \e[34m | \e[44m |
| Purple | \e[35m | \e[45m |
| Turquoise | \e[36m | \e[46m |
| Light Gray | \e[37m | \e[47m |

### Text format code

| Text format | code |
|-------------|------|
| normal text | 0 |
| bold | 1 |
| Underlined text | 4 |

The text(foreground) color code can have two values separated with _;_ , the one on the left side is to determine the the format of the text like normal text or bold, on the right hand side the color of the text, like:

```
# normal grenn
\e[0;32m

# bold grenn
\e[1;32m
```

### Example

```
PS1="\[\e[1;32m\]\t-\w: "
```