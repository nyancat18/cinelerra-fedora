#! /bin/bash 

dnf -y install kernel-headers

dnf -y install kernel-devel


dnf -y groupinstall "Development Tools"

dnf -y groupinstall "Development Libraries"


dnf -y install gtk2-devel gtk-doc gstreamer-devel gcc pkg-config automake SDL-devel p7zip wget


wget http://softlayer-dal.dl.sourceforge.net/project/spectrum3d/spectrum3d-2.5.0.tar.gz 

tar -xzvf spectrum3d-2.5.0.tar.gz

cd spectrum3d-2.5.0

./configure

make 

make install

