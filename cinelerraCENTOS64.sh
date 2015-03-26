#! /bin/bash 



yum -y install gcc-c++  libXt-devel, libXv-devel, libXxf86vm-devel, libXext-devel gettext-devel esound-devel alsa-lib-devel mjpegtools-devel e2fsprogs-devel fftw3-devel a52dec-devel lame-devel libsndfile-devel OpenEXR-devel faad2-devel libraw1394-devel libiec61883-devel libavc1394-devel x264-devellibogg-devel, libvorbis-devel, libtheora-devel libGL-devel libGLU-devel nasm libtool freetype-devel faac-devel libjpeg-devel libpng-devel libtiff-devel libdv-devel ffmpeg-devel
yum -y install git

git clone git://git.cinelerra-cv.org/CinelerraCV.git cinelerra-cv

cd cinelerra-cv 

./autogen.sh


./configure --with-buildinfo=git/recompile 

make 

make install

