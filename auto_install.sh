#download git
sudo apt-get --assume-yes install git
cd
git clone --depth=1 https://github.com/theofficialgman/RetroPie-Setup.git

#auto install retropie with most important emulators (which don't take up much space)
cd RetroPie-Setup
sudo ./retropie_packages.sh setup basic_install_setup
sudo ./retropie_packages.sh sdl2
