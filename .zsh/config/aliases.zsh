# Core Shortcuts
alias rm='trash' # Use `trash` program instead of built-in irrecoverable way to delete nodes.
alias mv='mv --interactive --verbose' # Move nodes with interactive mode and extra verbosity.
alias cp='cp --interactive --verbose' # Copy nodes with interactive mode and extra verbosity.
alias ln='ln --interactive --verbose' # Link nodes with interactive mode and extra verbosity.
alias mkdir='mkdir --parents' # Make missing parent directories when creating folders.
alias grep='grep --color=auto --exclude-dir=".git" --exclude-dir="node_modules"' # Grep with colors and ignore common directories.
alias du='du --max-depth=1 --si' # Display size of files and folders under current directory.
alias df='df --all --si --print-type' # Display all disk usage statistics with SI units and FS types.
alias ls='ls --almost-all --classify --color=always --group-directories-first --literal' # List name of nodes.
alias la='ls -l --almost-all --si' # List nodes with their details.

# Custom Shortcuts
alias v='nvim'
alias g='git'
alias s='$EDITOR ~/Sync/'
alias tmux='tmux -f "$HOME/.tmux/tmux.conf"'
alias def='sdcv --color'
alias bwlogin='bw login --code "$(auth bitwarden)" "$(< ~/.mutt/accounts/com.gmail/email.txt)" "$(gpg --no-tty --for-your-eyes-only --quiet --decrypt ~/.bitwarden/secret.gpg)"'
alias bwunlock='export BW_SESSION="$(bw unlock --raw $(gpg --no-tty --for-your-eyes-only --quiet --decrypt ~/.bitwarden/secret.gpg))"'
alias pacman='sudo pacman'
alias rsync='rsync --protect-args --compress --verbose --progress --human-readable'

# Global Aliases
alias -g L='| less'
alias -g G='| grep'

# ledger
alias l='ledger'
alias lnet="ledger register '^expenses' '^income' --period 'this month' --subtotal --invert"
alias lweek="ledger register '^expenses' --period 'this week' --invert"
alias lmonth="ledger register '^expenses' --period 'this month'"
alias lbal="ledger balance '^assets' '^liabilities' --empty --flat"

# git
foreach aliaskey (a b bl c co d ds dt dts f l s sm) {
	alias g$aliaskey="git $aliaskey"
}
unset aliaskey
