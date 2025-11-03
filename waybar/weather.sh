#!/bin/bash
weather=$(curl -s "https://wttr.in/000000?format=%t+%c")
echo "$weather"
