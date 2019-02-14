echo "add this lines to /etc/pacman.conf:"
echo "[archstrike]"
echo '''Server = https://mirror.archstrike.org/$arch/$repo/'''
echo "added ? y/n: "
read $yn
if [ $yn=='y' ]
then
sudo pacman-key --init
sudo dirmngr < /dev/null
sudo pacman-key -r 9D5F1C051D146843CDA4858BDE64825E7CBC0D51
sudo pacman-key --lsign-key 9D5F1C051D146843CDA4858BDE64825E7CBC0D51
else
echo "so add and reopen script"
fi
