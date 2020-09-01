#download git
sudo apt-get --assume-yes install git
cd
sudo rm -rf RetroPie-Setup
git clone --depth=1 https://github.com/theofficialgman/RetroPie-Setup.git

#auto install retropie with most important emulators (which don't take up much space)
cd RetroPie-Setup
sudo ./retropie_packages.sh setup basic_install
if dpkg -s libsdl2-dev | grep -q "2.0.10+5"; then
echo ""
echo "Already Installed Newest SDL2 Version"
sleep 3
else
sudo ./retropie_packages.sh sdl2
echo ""
echo "Successfully Installed Newest SDL2 Version"
sleep 3
fi