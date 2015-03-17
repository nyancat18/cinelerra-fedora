#! /bin/bash 

dnf -y install kernel-headers

dnf -y install kernel-devel


dnf -y groupinstall "Development Tools"

dnf -y groupinstall "Development Libraries"


dnf -y install esound-devel alsa-lib-devel mjpegtools-devel e2fsprogs-devel fftw3-devel a52dec-devel libsndfile-devel faad2-devel libraw1394-devel libiec61883-devel libavc1394-devel x264-devel libogg-devel libvorbis-devel libtheora-devel nasm faac-devel libtiff-devel libdv-devel ffmpeg-devel libuuid-devel faad2 faac mjpegtools lame-devel lame opencv-devel libjpeg-turbo-devel libjpeg-turbo-utils ilmbase-devel OpenEXR-devel OpenEXR frei0r-plugins-opencv zfstream 

dnf -y install git


git clone git://git.cinelerra-cv.org/CinelerraCV.git cinelerra-cv

cd cinelerra-cv 

./autogen.sh


./configure --with-buildinfo=git/recompile 

make 

make install

