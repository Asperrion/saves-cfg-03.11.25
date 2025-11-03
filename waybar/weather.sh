#!/bin/bash
weather=$(curl -s "https://wttr.in/624054?format=%t+%c")
echo "$weather"