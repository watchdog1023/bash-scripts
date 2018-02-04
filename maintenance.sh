#update and upgrade OS with clean up after
rm -v /var/lib/dpkg/lock
rm -v /var/cache/apt/archives/lock
rm -v /var/lib/apt/lists/lock
apt-get update
rm -v /var/lib/dpkg/lock
rm -v /var/cache/apt/archives/lock
rm -v /var/lib/apt/lists/lock
apt-get upgrade -y
apt-get clean
apt-get autoremove -y
