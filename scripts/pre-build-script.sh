#!/bin/sh
if [ "$?" -eq "0" ]; then
    (sudo apt-get update; sudo apt-get install -y make m4 build-essential gcc gfortran libssl-dev python-software-properties expect expect-dev; sudo -E apt-add-repository -y ppa:aims/sagemath; sudo apt-get update; sudo apt-get install -y dvipng)
    if [ "$?" -eq "100" ]; then
      (sudo dpkg --configure -a; sudo apt-get install -f; sudo apt-get install -y sagemath-upstream-binary --force-yes)
    fi
fi
