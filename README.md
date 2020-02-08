# sc-testserver
## Socketcluster Test Server

- Create following script at root of the project named "**scserver**"

```
#!/bin/bash

if test "$#" -ne 1; then
     echo "Please provide start or stop as argument"
     exit 1
fi

FOLDER="sc-testserver"
URL="https://github.com/sacOO7/sc-testserver"

if [ ! -d "$FOLDER" ] ; then
    git clone $URL $FOLDER
    cd "$FOLDER"
else
    cd "$FOLDER"
    git pull $URL
fi

if [ $1 = "start" ]; then
    ./runserver
fi
if [ $1 = "stop" ]; then
    ./stopserver
fi

```

- Run the script using **scserver start** (It will create a scserver docker daemon container)
- Stop container process using **scserver stop**
