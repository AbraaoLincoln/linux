# Data Streams

- Whenever any command-line utility is run, it generates two outputs. The output goes to stdout and the error (if generated) goes to stderr. By default, both these data streams are associated with the terminal

- Whenever running any command in the terminal, stdin, stderr, and stdout are three data streams that bash creates.

- all three streams carry text as the data

- when usuing >, >>, <, << is redirect the streams

# stdin

Stands for standard input. It takes text as input. its file descriptor is 0.

- The goal of stdin is to work with input

# stdout

Stands for standard output. The text output of a command is stored in the stdout stream. its file descriptor is 1.

# stderr

Stands for standard error. Whenever a command faces an error, the error message is stored in this stream. its file descriptor is 2.

# the piping ( | ) sign 

Is responsible for piping, the output generates by the command on the left side of | is written in the stdout stream. Then, the piping redirects the content of stdout to stdin for the command on the right side.

- to pipe both the stderr and stdout to the next command, the |& can be used.

```
echo "text sample" |& cat
```

# Redirecting Stdout and Stderr

To do this, it is necessary to specify the file descriptor of stdout and stderr before the redirect sign.

```
# for stdout
echo "text sample" 1> file
```

```
# for stderr
echo "text sample" 2> file
```

```
# both in diferent file
echo "text sample" 1> file_msg 2> file_debug
```

```
# both same file
echo "text sample" &> file
```




























