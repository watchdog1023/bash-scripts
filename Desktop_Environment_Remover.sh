#Remove Desktop Enviroments
#Comment out the Desktop Environment you want to keep
apt-get purge gnome-* -y
apt-get purge xfce-* -y
apt-get purge kde-* -y
apt-get purge mate-* -y
apt-get purge lxde-* -y
apt-get purge cinnamon-* -y
apt-get purge openbox-* -y
apt-get autoremove -y