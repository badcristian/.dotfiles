# ALIAS

alias pr="vim ~/.zshrc"
alias profile="vim ~/.zshrc"
alias v="nvim"
alias py="python3"
alias pa="php artisan"
alias g="git"
alias growee="ssh forge@54.195.224.232"
alias ribeit="ssh forge@3.76.111.19"
alias reload="source ~/.zshrc"
alias rr="source ~/.zshrc"
alias mysql="sudo /usr/local/mysql/bin/mysql -u root -p"
alias checks="composer checks"
alias gck='git checkout'
alias gb="git branch"
alias stash='git stash -u'
alias unstash='git stash pop'
alias gs='git status'
alias ga='git add .'
alias fresh="pa migrate:fresh --seed"
alias gcm="git commit -m"
alias n="tmux new-session -A -s"
alias a="tmux a -d -t"
alias t="tmux"
alias reseed="composer reseed"
alias theme=" ghostty +list-themes"
alias config="vim ~/.config/ghostty/config"
alias work="php artisan queue:work --timeout=0"
alias works="php artisan queue:work --timeout=0 --queue=default,storage"
alias queue="php artisan queue:listen --timeout=0"
alias scheduler="php artisan schedule:work"

# BREW
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="/opt/homebrew/opt/node@20/bin:$PATH"
export PATH="/opt/homebrew/opt/php@8.4/bin:$PATH"
export PATH="/opt/homebrew/opt/php@8.4/sbin:$PATH"

# COMPOSER
export PATH="$PATH:$HOME/.composer/vendor/bin"

# PURE
# fpath+=("$(brew --prefix)/share/zsh/site-functions")
# autoload -U promptinit; promptinit
# prompt pure

# GEOMETRY
GEOMETRY_INFO=""	
source /opt/homebrew/opt/geometry/share/geometry/geometry.zsh

# CARGO
export PATH="$HOME/.cargo/bin:$PATH"

# FZF
source <(fzf --zsh)

export FZF_DEFAULT_COMMAND='fd -I --type f --color=never --hidden'
export FZF_DEFAULT_OPTS='--no-height --color=bg+:#343d46,gutter:-1,pointer:#ff3c3c,info:#0dbc79,hl:#0dbc79,hl+:#23d18b'

export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --line-range :50 {}'"

export FZF_ALT_C_COMMAND='fd --type d . --color=never --hidden'
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -50'"


# autoload -Uz compinit && compinit
# autoload -Uz vcs_info
# precmd() { vcs_info }

# zstyle ':vcs_info:git:*' formats '%b '
# setopt PROMPT_SUBST
# PROMPT='%F{blue}%~%f %F{yellow}${vcs_info_msg_0_}%f$ '

export GPG_TTY=$(tty)
# Created by `pipx` on 2024-09-18 15:36:51
export PATH="$PATH:/Users/mac/.local/bin"

# Report command running time if it is more than 3 seconds
REPORTTIME=3
# Keep a lot of history
HISTFILE=~/.zhistory
HISTSIZE=5000
SAVEHIST=5000
# Add commands to history as they are entered, don't wait for shell to exit
setopt INC_APPEND_HISTORY
# Also remember command start time and duration
setopt EXTENDED_HISTORY
# Do not keep duplicate commands in history
setopt HIST_IGNORE_ALL_DUPS
# Do not remember commands that start with a whitespace
setopt HIST_IGNORE_SPACE
# Correct spelling of all arguments in the command line
setopt CORRECT_ALL
# Enable autocompletion
zstyle ':completion:*' completer _complete _correct _approximate
