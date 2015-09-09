export http_proxy="http://proxy.iiit.ac.in:8080"
export https_proxy="http://proxy.iiit.ac.in:8080"
apt-get update
apt-get install -y m4 build-essential gcc gfortran libssl-dev python-software-properties
add-apt-repository ppa:aims/sagemath
apt-get update
apt-get install dvipng
apt-get install sagemath-upstream-binary
mkdir -p ~/.sage/sage-notebook.sagenb/
cp -r users.pickle ~/.sage/sage-notebook.sagenb/
/usr/bin/screen -d -m sudo /root/databases-and-datamining/scripts/create_sagenb -i -y
/usr/bin/screen -d -m sudo /root/databases-and-datamining/scripts/start_sage -i -y