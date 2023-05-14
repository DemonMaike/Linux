#!bin/bash

TITLE="System Information Report For $HOSTNAME"
CURRENT_TIME=$(date +"%x %r %Z")
TIME_STAMP="Generated $CURRENT_TIME, by $USER"

cat << __EOF__
<html>
            <head>
                <title>$TITLE<title>
            <head>
            <body>
                <h1>$TITLE</h1>
                <p>$TIME_STAMP</p>
            <body> 
</html>
__EOF__
