#!/bin/bash

while sleep 1
do
    java -Xms1G -Xmx1G -XX:+UseG1GC -jar paper-1.19-61.jar nogui
done
