#! /bin/bash 


RPMFUSIONFREE=/etc/yum.repos.d/rpmfusion-free.repo
if [ -f $RPMFUSIONFREE ]; then 
echo "eL repositorio $RPMFUSIONFREE está instalado." 
else 

dnf -y --nogpgcheck install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-21.noarch.rpm


fi 

RPMFUSIONONFREE=/etc/yum.repos.d/rpmfusion-nonfree.repo
if [ -f $RPMFUSIONONFREE ]; then 
echo "El repositorio $RPMFUSIONONFREE está instalado." 
else 

dnf -y --nogpgcheck install http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-21.noarch.rpm


fi 


RUSSIANFIX=/etc/yum.repos.d/russianfedora-fixes.repo
if [ -f $RUSSIANFIX ]; then 
echo "El repositorio $RUSSIANFIX está instalado." 
else 

dnf -y --nogpgcheck install http://mirror.yandex.ru/fedora/russianfedora/russianfedora/fixes/fedora/russianfedora-fixes-release-stable.noarch.rpm

fi 

RUSSIANFREE=/etc/yum.repos.d/russianfedora-free.repo
if [ -f $RUSSIANFREE ]; then 
echo "El repositorio $RUSSIANFREE está instalado." 
else 

dnf -y --nogpgcheck install http://mirror.yandex.ru/fedora/russianfedora/russianfedora/free/fedora/russianfedora-free-release-stable.noarch.rpm 
fi 

RUSSIANNONFREE=/etc/yum.repos.d/russianfedora-nonfree.repo
if [ -f $RUSSIANNONFREE ]; then 
echo "El repositorio $RUSSIANNONFREE está instalado." 
else 

dnf -y --nogpgcheck install http://mirror.yandex.ru/fedora/russianfedora/russianfedora/nonfree/fedora/russianfedora-nonfree-release-stable.noarch.rpm 
fi 

POSTINSTALLER=/etc/yum.repos.d/postinstallerf.repo
if [ -f $POSTINSTALLER ]; then 
echo "El repositorio $POSTINSTALLER está instalado." 
else 

dnf -y --nogpgcheck install http://hivelocity.dl.sourceforge.net/project/postinstaller/fedora/releases/21/x86_64/postinstallerf-1.5-21.fc21.noarch.rpm
fi 

echo "a trabajar"


dnf -y install kernel-headers

dnf -y install kernel-devel


dnf -y groupinstall "Development Tools"

dnf -y groupinstall "Development Libraries"


dnf -y install esound-devel alsa-lib-devel mjpegtools-devel e2fsprogs-devel fftw3-devel a52dec-devel libsndfile-devel faad2-devel libraw1394-devel libiec61883-devel libavc1394-devel x264-devel libogg-devel libvorbis-devel libtheora-devel nasm faac-devel libtiff-devel libdv-devel ffmpeg-devel libuuid-devel faad2 faac mjpegtools lame-devel lame opencv-devel libjpeg-turbo-devel libjpeg-turbo-utils ilmbase-devel OpenEXR-devel OpenEXR frei0r-plugins-opencv zfstream 

dnf -y install git


git clone git://git.cinelerra-cv.org/CinelerraCV.git cinelerra-cv

cd cinelerra-cv 

./autogen.sh


./configure --with-buildinfo=git/recompile --enable-mmx --without-pic

make 

make install

