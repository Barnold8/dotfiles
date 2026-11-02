source /usr/share/cachyos-fish-config/cachyos-config.fish

# overwrite greeting
# potentially disabling fastfetch
#function fish_greeting
#    # smth smth
#end


alias cls="clear"
alias editFish="nano ~/.config/fish/config.fish"
alias editFishVIM="nvim ~/.config/fish/config.fish"
alias refresh="source ~/.config/fish/config.fish"
alias bedTime="~/Code/MassScripts/Linux/bedtime.sh"
alias newKitty="~./Code/MassScripts/Linux/catWallpaper.sh"
alias encdcr="~/Code/MassScripts/Linux/encdcr.sh"
alias getGitKey='~/Code/MassScripts/Linux/encdcr.sh -d ~/gitKey.aes && cat ~/gitKey.aes.unencrypted | wl-copy && rm ~/gitKey.aes.unencrypted'
alias gpuUsage="gpustat -i 1"
alias updatePackages="sudo pacman -Syu --noconfirm"
alias cleanSystem="sudo pacman -Rns (pacman -Qdtq)"
alias getDefaultGateway="ip r | grep ^def"
alias editBinds="nvim ~/.config/hypr/hyprland.lua"
alias editBindsLegacy="nvim ~/.config/hypr/hyprland.conf"
alias flushClipboard="echo | wl-copy"
alias pushToGit="getGitKey && git push && flushClipboard"
alias timer="~/Code/Alarm/build/Alarm"
alias gitList="git ls-files . --exclude-standard --others"
alias updateFishConfig="cp -i ~/.config/fish/config.fish ~/Code/Dotfiles" # note for this and the next line, these scripts will have to be moved into their respective folders on a fresh install
alias updateHyprlandConfig="cp -i ~/.config/hypr/hyprland.conf ~/Code/Dotfiles"
alias gotoScripts="cd ~/Code/MassScripts/Linux"
alias printAliases="cat ~/.config/fish/config.fish"
alias rebootNetwork="sudo systemctl restart NetworkManager"
alias updateConfigs="yes | updateFishConfig && yes | updateHyprlandConfig && cd ~/Code/Dotfiles && git add . && git commit -m \"Update configs\" && pushToGit && cd -"
alias diskUsage="ncdu"
alias isVPN="sudo systemctl status mullvad-daemon"
alias updateBedTime="updatePackages && bedTime"
alias viewSnapshots="sudo snapper list"
alias viewSnapshotSettings="sudo snapper -c root get-config"
alias editSnapshotSetting="sudo nvim /etc/snapper/configs/root"
alias listDisks="sudo lsblk -o NAME,FSTYPE,SIZE,MOUNTPOINT,LABEL"
