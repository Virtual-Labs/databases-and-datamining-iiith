sudo apt-get update
sudo apt-get install -y make m4 build-essential gcc gfortran libssl-dev
sudo apt-get install -y python-software-properties
sudo -E apt-add-repository -y ppa:aims/sagemath
sudo apt-get update
sudo apt-get install -y dvipng
sudo dpkg --configure -a
sudo apt-get install -f
sudo apt-get install -y sagemath-upstream-binary --force-yes
#if [ "$?" = "1" ]; then
#    sudo dpkg --configure -a
#    sudo apt-get install -f
#    sudo apt-get install -y sagemath-upstream-binary --force-yes
#    echo "Installation successful!" 1>&2
#else
#    echo "F This does not work,Please try your luck again!"
#fi

