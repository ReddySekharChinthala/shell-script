#!/bin/bash

COURSE="Devops from current script"

echo "Before calling other script course: $COURSE"
echo "PID of current script: $$"

./18-other-script.sh

echo "After calling other script course: $COURSE"