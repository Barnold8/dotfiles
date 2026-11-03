source /usr/share/cachyos-fish-config/cachyos-config.fish

# Edit commands
alias editFishVIM="nvim ~/.config/fish/config.fish"
alias editBindsHyprland="nvim ~/.config/hypr/hyprland.conf"
alias editSnapshotSetting="sudo nvim /etc/snapper/configs/root"

# Update commands
alias updateFishConfig="cp -i ~/.config/fish/config.fish ~/Code/Dotfiles/shell" # note for this and the next line, these scripts will have to be moved into their respective folders on a fresh install
alias updateHyprlandConfig="cp -i ~/.config/hypr/hyprland.conf ~/Code/Dotfiles/hyprland && cp -i ~/.config/hypr/config/inputs.lua ~/Code/Dotfiles/hyprland/config/"
alias updateConfigs="yes | updateFishConfig && yes | updateHyprlandConfig && cd ~/Code/Dotfiles && git add . && git commit -m \"Update configs\" && pushToGit && cd -"

alias updatePackages="sudo pacman -Syu --noconfirm"

# Shell commands
alias cls="clear"
alias refresh="source ~/.config/fish/config.fish"
alias printAliases="cat ~/.config/fish/config.fish"

# System commands

	# DISK
alias viewSnapshots="sudo snapper list"
alias viewSnapshotSettings="sudo snapper -c root get-config"
alias listDisks="sudo lsblk -o NAME,FSTYPE,SIZE,MOUNTPOINT,LABEL"
alias cleanSystem="sudo pacman -Rns (pacman -Qdtq)"
alias diskUsage="ncdu"

	# GPU
alias gpuUsage="gpustat -i 1"
	# NETWORK
alias rebootNetwork="sudo systemctl restart NetworkManager"
alias isVPN="sudo systemctl status mullvad-daemon"
alias getDefaultGateway="ip r | grep ^def"

# Programs
alias timer="~/Code/TerminalAlarm/build/Alarm"

# What I need for GIT
alias encdcr="~/Code/MassScripts/Linux/encdcr.sh"
alias getGitKey='~/Code/MassScripts/Linux/encdcr.sh -d ~/gitKey.aes && cat ~/gitKey.aes.unencrypted | wl-copy && rm ~/gitKey.aes.unencrypted'
alias flushClipboard="echo | wl-copy"
alias pushToGit="getGitKey && git push && flushClipboard"
alias gitList="git ls-files . --exclude-standard --others"


# Lazyness supplements
alias bedTime="~/Code/MassScripts/Linux/bedtime.sh"
alias gotoScripts="cd ~/Code/MassScripts/Linux"
alias updateBedTime="updatePackages && bedTime"

# MISC
alias newKitty="~./Code/MassScripts/Linux/catWallpaper.sh noctalia"
