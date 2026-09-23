source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(starship init zsh)"

alias cls="clear"
alias update="sudo pacman -Syu"
alias ff="fastfetch"

# Adding Auto_cd
setopt auto_cd
chpwd() {
    if command -v eza &>/dev/null; then
        eza --icons=always --git
    else
        ls --color=auto
    fi
}
