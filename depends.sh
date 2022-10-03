#!/bin/bash

# Dev-libraries
echo "** installing build dependencies"
sudo apt-get install  cmake zip libelf1 libelf-dev libffi-dev make gcc g++ git flex bison python3 python3-venv python3-pip libyaml-dev
sudo apt-get install libffi6
sudo apt-get install libffi7