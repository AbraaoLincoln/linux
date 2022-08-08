# SCRIPT

- The first thing need is to specify which shelll is gonna be used

- the combination of #! on the first line indicates which shell it's gonna be used to run the script.

    - #!/bin/bash to use the shell bash

- \# indicates a comment

- to run more than one command use ; as a separtor between commands

```
mkdir test; cd test
```

## Permission

it is necessary give the script the permission to be executed, this can be done with the following command

```
chmod +x script_name
```

or

```
chmod a+x script_name
```

- optionally the script can be add to a directory that is present on the environment variable PATH or add the directory where the script is on the variable, making it accessible through the system