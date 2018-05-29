apt-get update
apt-get upgrade
apt-get install libgstreamer-plugins-base1.0-dev libopencv-dev build-essential cmake git libgtk2.0-dev pkg-config python-dev python-numpy libdc1394-22 libdc1394-22-dev libjpeg-dev  libjasper-dev libavcodec-dev libavformat-dev libswscale-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev libtbb-dev libqt4-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev x264 v4l-utils unzip build-essential cmake cmake-curses-gui pkg-config libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev libavcodec-dev libavformat-dev libswscale-dev libeigen3-dev libxvidcore-dev libx264-dev libgtk2.0-dev libv4l-dev v4l-utils libatlas-base-dev gfortran python2.7-dev python2-numpy python3-dev python3-numpy libavresample-dev libgphoto2-dev libopenexr-dev
wget -c https://github.com/opencv/opencv/archive/3.3.1.zip -O opencv_source.zip
wget -c https://github.com/opencv/opencv_contrib/archive/3.3.1.zip -O opencv_contrib.zip
unzip opencv_s*
unzip opencv_c*
cd opencv-*
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D BUILD_WITH_DEBUG_INFO=OFF -D BUILD_DOCS=OFF -D BUILD_EXAMPLES=OFF -D BUILD_TESTS=OFF -D BUILD_opencv_ts=OFF -D BUILD_PERF_TESTS=OFF -D INSTALL_C_EXAMPLES=ON -D INSTALL_PYTHON_EXAMPLES=ON -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib-3.3.1/modules -D ENABLE_NEON=ON -D WITH_LIBV4L=ON ../
make -j4
make install
ldconfig