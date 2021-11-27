plugins=(
    git
    dnf
    zsh-syntax-highlighting
    zsh-autosuggestions
    zsh-history-substring-search
    docker
    docker-compose
    npm
)

# Make sure path files are loaded first
for config_file ($DOTFILES/**/path.zsh(N)); do
    source $config_file
done
unset config_file

# Activate Oh-My-Zsh
source $ZSH/oh-my-zsh.sh

# Load our own zsh files
for config_file ($DOTFILES/**/*.zsh(N)); do
    source $config_file
done
unset config_file

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

unsetopt nomatch

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Colorls (Warning: this makes loading time slow)
# alias ls='colorls -A --sd'

if command -v pyenv 1>/dev/null 2>&1; then
    eval "$(pyenv init -)"
    eval "$(pyenv virtualenv-init -)"
fi

timezsh() {
    shell=${1-$SHELL}
    for i in $(seq 1 10); do /usr/bin/time $shell -i -c exit; done
}
