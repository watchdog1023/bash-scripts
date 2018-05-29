echo "deb http://http.kali.org/kali kali-rolling main non-free contrib" >> /etc/apt/source.list
apt-key adv --keyserver hkp://keys.gnupg.net --recv-keys 7D8D0BF6
apt-get update