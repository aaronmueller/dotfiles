# theme setting
fpath+=$HOME/.zsh/pure
autoload -U promptinit; promptinit
prompt pure

# syntax highlighting
source $HOME/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Base16 shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
	[ -s "$BASE16_SHELL/profile_helper.sh" ] && \
		eval "$("$BASE16_SHELL/profile_helper.sh")"

# colorful outputs
alias ls='ls -G'
export GREP_OPTIONS='--color=always'
export GREP_COLOR='1;35;40'

alias python='python3'
