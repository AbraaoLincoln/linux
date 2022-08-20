# File Descriptor

In the UNIX ecosystem, these are integer values assigned to a file.


## Shell

- Both stdout (file descriptor = 1) and stderr (file descriptor = 2) have a specific file descriptor. 

- Using the file descriptor of stdout and stderr, we can redirect the stdout and stderr to other files.

- If a file descriptor is not specified, bash will use stdout by default.
