sudo pacman -Syu
sudo pacman -Qdt
sudo pacman -R $(pacman -Qdtq)
sudo pacman -Scc
