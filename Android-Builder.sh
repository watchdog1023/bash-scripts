if [[ ${#BASH_ARGV[@]} -lt 3 ]]; then
    echo Usage is android-builder [git username] [git email] [android branch] [dir where download source will go]
else
	apt-get update
	apt-get install git-core python gnupg flex bison gperf build-essential zip curl zlib1g-dev gcc-multilib g++-multilib libc6-dev-i386 lib32ncurses5-dev x11proto-core-dev libx11-dev lib32z-dev ccache libgl1-mesa-dev libxml2-utils xsltproc unzip openjdk-8-jdk libx11-dev:i386 ia32-libs x11proto-core-dev libx11-dev lib32readline5-dev lib32z-dev libgl1-mesa-dev g++-multilib mingw32 tofrodos python-markdown libxml2-utils xsltproc -y
	update-alternatives --config java
	update-alternatives --config javac
	curl https://storage.googleapis.com/git-repo-downloads/repo > /bin/repo
	chmod a+x /bin/repo
	mkdir ${BASH_ARGV[0]}/android
	cd ${BASH_ARGV[0]}/android
	rm -r WORKING_DIRECTORY
	mkdir WORKING_DIRECTORY
	cd WORKING_DIRECTORY
	git config --global user.name ${BASH_ARGV[3]}
	git config --global user.email ${BASH_ARGV[2]}
	repo init -u https://android.googlesource.com/platform/manifest -b ${BASH_ARGV[1]}
	repo sync
fi
