#download git
sudo apt-get --assume-yes install git
cd
sudo rm -rf RetroPie-Setup
git clone --depth=1 https://github.com/theofficialgman/RetroPie-Setup.git

#auto install retropie with most important emulators (which don't take up much space)
cd RetroPie-Setup
# unfortunatly I can't use this this not all main packages work ... sudo ./retropie_packages.sh setup basic_install
# manually install all of the required and good stuff
sudo ./retropie_packages.sh retroarch
sudo ./retropie_packages.sh emulationstation
sudo ./retropie_packages.sh retropiemenu
sudo ./retropie_packages.sh runcommand
sudo ./retropie_packages.sh lr-mupen64plus-next
sudo ./retropie_packages.sh lr-atari800
sudo ./retropie_packages.sh lr-beetle-ngp
sudo ./retropie_packages.sh lr-beetle-pce-fast
sudo ./retropie_packages.sh lr-beetle-superfrafx
sudo ./retropie_packages.sh lr-fbneo
sudo ./retropie_packages.sh lr-fceumm
sudo ./retropie_packages.sh lr-gambatte
sudo ./retropie_packages.sh lr-genesis-plus-gx
sudo ./retropie_packages.sh lr-handy
sudo ./retropie_packages.sh lr-mame2003
sudo ./retropie_packages.sh lr-mgba
sudo ./retropie_packages.sh lr-nestopia
sudo ./retropie_packages.sh lr-prosystem
sudo ./retropie_packages.sh lr-quicknes
sudo ./retropie_packages.sh lr-stella2014
sudo ./retropie_packages.sh lr-vba-next
sudo ./retropie_packages.sh lr-vecx
sudo ./retropie_packages.sh lr-bsnes
sudo ./retropie_packages.sh lr-flycast
sudo ./retropie_packages.sh lr-mame2016
sudo ./retropie_packages.sh lr-mame2010
sudo ./retropie_packages.sh lr-mame
sudo ./retropie_packages.sh lr-pcsx-rearmed
sudo ./retropie_packages.sh lr-ppsspp
sudo ./retropie_packages.sh lr-snex9x
sudo ./retropie_packages.sh lzdoom
sudo ./retropie_packages.sh scraper
sudo ./retropie_packages.sh skyscraper
#sudo ./retropie_packages.sh usbromservice
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