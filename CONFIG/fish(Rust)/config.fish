if status is-interactive
    # Commands to run in interactive sessions can go here
end

zoxide init fish | source

#starship init fish | source

alias yayf='fzf --height=30%'
alias weather='curl wttr.in/Kimberley'
alias sdb1='sudo mount /dev/sdb1 ~/sdb1'
alias sdb1x='sudo umount ~/sdb1'
alias mtp='jmtpfs ~/mtp'
alias mtpx='fusermount -u ~/mtp'
alias portal='nohup /usr/lib/xdg-desktop-portal-gtk >/dev/null 2>&1 & disown'
alias polkit='nohup /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 >/dev/null 2>&1 & disown'
alias clock='tty-clock -c -D -C 7'
alias unlock='sudo sysctl kernel.unprivileged_userns_clone=1'
alias lock='sudo sysctl kernel.unprivileged_userns_clone=0'
alias ls='exa --icons'
alias fetch='fastfetch'
alias fetch2='fastfetch --logo arch'
alias matrix='cmatrix -u 8 -C white'
alias scan='clamscan -r -i'
alias optimize='sudo fstrim -v /'
alias dwll='slstatus -s | dwl'
alias qute='nohup firejail qutebrowser &'
alias screenshot='bash ~/screenshot.sh'
alias wp='nohup python ~/wallpaper.py &'
alias launch='bash ~/fzflauncher.sh'
alias zenbrowser='nohup flatpak run app.zen_browser.zen >/dev/null 2>&1 & disown'
alias steam='nohup flatpak run com.valvesoftware.Steam >/dev/null 2>&1 & disown'

fastfetch

set -g fish_greeting ""

function cd
    if builtin cd $argv
        ls -a
    end
end

fish_config theme choose seaweed
