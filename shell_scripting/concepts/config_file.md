# CONFIG FILES

the config files can be use to auto config enviroment variables, functions and aliases

- each config file has its scope, and depends on how the bash was initiated

- the bash can be initiated of three forms

    - login shell (default when the system is initialized)

    - interactive shell

    - non-interactive shell( used to run script)

## Files

| File         | Description |
|:-------------|:------------|
| /etc/profile | its a file of initialization, get executed on login and is valid for all system; it has environment variables and initialization programs |
| /etc/bashrc or /etc/bash.bashrc | its a file of initialization, is valid for all system; it is executed by .bashrc for each shell bash initialized, it has function and aliases |
| ~/.bash_profile | if exist, get executed after /etc/profile on login |
| ~/.bash_login | if .bash_profile not exist, get executed after /etc/profile on login |
| ~/.profile | if .bash_profile and .bash_login not exist, get executed after /etc/profile on login |
| ~/.bashrc | get executed when the bash is initialized on interactive mode |
| ~/inputrc | it has variable and config of the mode of operation of bash regarding the keys |
| ~/bash_logout | get executed on logout | 

## BASH_ENV

When the shell is iniatialized to execute a script, it check the enviroment variable BASH_ENV to see if there is any command of iniatialized that needs to be executed, by default the variable is not config