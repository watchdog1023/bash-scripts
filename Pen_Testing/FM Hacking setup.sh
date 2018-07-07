mkdir ~/Desktop/src
cd ~/Desktop/src
apt-get update
apt-get install libsndfile1-dev make git-all gqrx cmake -y
git clone https://github.com/ChristopheJacquet/PiFmRds.git
cd PiFmRds/src
make clean
make
cd ~/Desktop/src
#git clone https://github.com/csete/gqrx.git
git clone https://github.com/szechyjs/dsd.git

