#This script Creates a Raid1 array with two Drives 
sudo mdadm --create --verbose /dev/md0 --level=1 --raid-devices=2 /dev/sdb1 /dev/sdc1
#sudo mdadm --assemble --scan
#sudo mdadm --assemble /dev/md0 /dev/sda1 /dev/sdb1
sudo mksf.ext4 /dev/md0