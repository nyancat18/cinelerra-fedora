#! /bin/bash 

dnf -y install http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-21.noarch.rpm
echo "instalando la rama free de RPMFusion"

dnf -y install http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-21.noarch.rpm

echo "instalando la rama nonfree de RPMFusion"

dnf -y install --nogpgcheck http://mirror.yandex.ru/fedora/russianfedora/russianfedora/free/fedora/russianfedora-free-release-stable.noarch.rpm http://mirror.yandex.ru/fedora/russianfedora/russianfedora/nonfree/fedora/russianfedora-nonfree-release-stable.noarch.rpm


echo "instalando las ramas free y nonfree de russian fedora"

dnf -y --nogpgcheck http://mirror.yandex.ru/fedora/russianfedora/russianfedora/fixes/fedora/russianfedora-fixes-release-stable.noarch.rpm 

echo "instalando el repo fixes"

cd /

cd etc

cd yum.repos.d

wget http://apt.kde-redhat.org/apt/kde-redhat/fedora/kde.repo 

echo "repositorio KDE"


dnf -y install dnf-plugins-core
echo "su sistema ya tiene todos los repos requeridos, pede comenzar el tuneo"
