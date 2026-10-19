# Added by ForgeCode installer
export PATH="/home/k1shu/.local/bin:$PATH"
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/k1shu/.zshrc'

autoload -Uz compinit
compinit


# End of lines added by compinstall
# -----------------------------------------------------
# ~/.zshrc
# -----------------------------------------------------

# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '

# Define Editor
export EDITOR=nvim
export VISUAL=nvim

# -----------------------------------------------------
# ALIASES
# -----------------------------------------------------

alias top='btop'
alias cl='clear' 
alias nf='neofetch'
alias pf='fastfetch'
alias ff='fastfetch'
alias ls='eza --icons'
alias l='eza -a --icons'
alias ll='eza -al --icons'
alias lt='_lt'
alias sshn='systemctl poweroff -i'
alias v='$EDITOR'
alias vim='$EDITOR'
alias matrix='cmatrix'
alias wifi='nmtui'
alias h='Hyprland'
alias zd='cd /home/k1shu/Dev'
alias zp='cd /home/k1shu/Downloads/'
alias b='cd ./..'
alias bb='cd ./../../'
alias bbb='cd ./../../../'
alias c='code .'
alias x='xdg-open'
alias rm='trash-put'
alias clean='trash-empty'
alias zed='zeditor'
alias gpt='brave --app=https://chat.openai.com'
alias nv='nvim '
alias lz='lazygit'
alias update='sudo pacman -Syu && yay -Syu'
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'

alias mkcd='function _mkcd(){ mkdir -p "$1"; cd "$1"; }; _mkcd'

# Added by Antigravity CLI installer
alias agy-ide="antigravity-ide"

# PgAdmin
alias pgadmin='source pgadmin4/bin/activate && pgadmin4'

# functions
_lt () {
  local target_dir="${1:-.}"
  local level="${2:-1}"
  local extra_flags=(--icons --git)
  shift 2 2>/dev/null || true

  eza --tree --level="${level}" --icons --git "$@" "$target_dir"
}

# Script to cloud login
SkyShreesetu() {
    if [[ $1 == upload ]]; then
        # the first argument is source (the path of a file or folder from local)
        scp -r "$2" "SkyShreesetu:${3:-$HOME/}"

    elif [[ $1 == download ]]; then
        # the first argument is source (the path of a file or folder from server)
        scp -r "SkyShreesetu:$2" "${3:-$HOME/Downloads/}"

    else
        ssh SkyShreesetu
    fi
}

# -----------------------------------------------------
# ML4W Apps
# -----------------------------------------------------
alias ml4w='~/dotfiles/apps/ML4W_Welcome-x86_64.AppImage'
alias ml4w-settings='~/dotfiles/apps/ML4W_Dotfiles_Settings-x86_64.AppImage'
alias ml4w-sidebar='~/dotfiles/eww/ml4w-sidebar/launch.sh'
alias ml4w-hyprland='~/dotfiles/apps/ML4W_Hyprland_Settings-x86_64.AppImage'
alias ml4w-diagnosis='~/dotfiles/hypr/scripts/diagnosis.sh'
alias ml4w-hyprland-diagnosis='~/dotfiles/hypr/scripts/diagnosis.sh'
alias ml4w-qtile-diagnosis='~/dotfiles/qtile/scripts/diagnosis.sh'

# -----------------------------------------------------
# Window Managers
# -----------------------------------------------------

alias Qtile='startx'
# Hyprland with Hyprland

# -----------------------------------------------------
# GIT
# -----------------------------------------------------
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gst="git stash"
alias gsp="git stash; git pull"
alias gcheck="git checkout"
alias gcredential="git config credential.helper store"

# -----------------------------------------------------
# SCRIPTS
# -----------------------------------------------------
alias gr='python ~/dotfiles/scripts/growthrate.py'
alias ChatGPT='python ~/mychatgpt/mychatgpt.py'
alias chat='python ~/mychatgpt/mychatgpt.py'
alias ascii='~/dotfiles/scripts/figlet.sh'

# -----------------------------------------------------
# VIRTUAL MACHINE
# -----------------------------------------------------
alias vm='~/private/launchvm.sh'
alias lg='~/dotfiles/scripts/looking-glass.sh'

# -----------------------------------------------------
# EDIT CONFIG FILES
# -----------------------------------------------------
alias conf='nvim ~/.zshrc'

# -----------------------------------------------------
# EDIT NOTES
# -----------------------------------------------------
alias notes='$EDITOR ~/Dev/notes.txt'

# -----------------------------------------------------
# SYSTEM
# -----------------------------------------------------
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias setkb='setxkbmap de;echo "Keyboard set back to de."'

# -----------------------------------------------------
# SCREEN RESOLUTINS
# -----------------------------------------------------

# Qtile
alias res1='xrandr --output DisplayPort-0 --mode 2560x1440 --rate 120'
alias res2='xrandr --output DisplayPort-0 --mode 1920x1080 --rate 120'

export PATH="/usr/lib/ccache/bin/:$PATH"

# -----------------------------------------------------
# DEVELOPMENT
# -----------------------------------------------------
alias dotsync="~/dotfiles-versions/dotfiles/.dev/sync.sh dotfiles"

# -----------------------------------------------------
# START STARSHIP
# -----------------------------------------------------
# eval "$(starship init bash)"
eval "$(starship init zsh)"

eval "$(zoxide init zsh)"

# -----------------------------------------------------
# PYWAL
# -----------------------------------------------------
# cat ~/.cache/wal/sequences

# -----------------------------------------------------
# Fastfetch if on wm
# -----------------------------------------------------
if [[ $(tty) == *"pts"* ]]; then
    fastfetch --config examples/13
else
    echo
    if [ -f /bin/qtile ]; then
        echo "Start Qtile X11 with command Qtile"
    fi
    if [ -f /bin/hyprctl ]; then
        echo "Start Hyprland with command Hyprland"
    fi
fi

# Created by `pipx` on 2024-07-03 03:01:15
export PATH="$PATH:/home/k1shu/.local/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

# zed
export PATH="$HOME/.local/bin:/usr/lib/ccache/bin:$PATH"

# bindkey

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word
bindkey '^ ' autosuggest-accept

# Android sdk tools
export ANDROID_HOME=/home/k1shu/Android/Sdk
export PATH=${PATH}:${ANDROID_HOME}/platform-tools
export PATH=${PATH}:${ANDROID_HOME}/tools
export PATH=${PATH}:${ANDROID_HOME}/platform-tools/emulator   

# ZSH AUTO SUGGESTIONS #d787ff #ff00ff 240
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#ff00ff,bg=gray,bold,underline"
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh 

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/k1shu/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/home/k1shu/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/k1shu/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/k1shu/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# opencode
export PATH=/home/k1shu/.opencode/bin:$PATH
