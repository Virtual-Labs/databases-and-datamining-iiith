#!/bin/sh
(sudo apt-get update; sudo apt-get install -y make m4 build-essential gcc gfortran libssl-dev python-software-properties expect expect-dev; sudo -E apt-add-repository -y ppa:aims/sagemath; sudo apt-get update; sudo apt-get install -y sagemath-upstream-binary --force-yes)

#echo "conditional check before dvipng...."
#(sudo apt-get update; sudo apt-get install -y make m4 build-essential gcc gfortran libssl-dev python-software-properties expect expect-dev; sudo -E apt-add-repository -y ppa:aims/sagemath; sudo apt-get update; sudo apt-get install -y dvipng)
#if [ $? -eq 100 ]; then
#      echo "starting dpkg after dvipng..."
#      (sudo dpkg --configure -a; sudo apt-get install -f; sudo apt-get install -y sagemath-upstream-binary --force-yes)
#else 
#    echo "else check after dvipng...."
#fi

