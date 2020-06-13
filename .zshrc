mkcdir ()
{
    mkdir "$1" &&
      cd "$1"
}
export git_token=my_cool_script
[[ -s `brew --prefix`/etc/autojump.sh ]] && . `brew --prefix`/etc/autojump.sh
export TERM="xterm-256color"
autoload -Uz compinit
compinit
export ZSH="/Users/ra312/.oh-my-zsh"
ZSH_THEME="spaceship"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status root_indicator background_jobs history time)
POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX="%f"
local user_symbol="$"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX="%{%B%F{black}%K{yellow}%} $user_symbol%{%b%f%k%F{yellow}%} %{%f%}"
plugins=(
		git
		zsh-autosuggestions
		zsh-syntax-highlighting
		zsh-interactive-cd
		)
source $ZSH/oh-my-zsh.sh


__conda_setup="$('/Users/ra312/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
	eval "$__conda_setup"
else
	if [ -f "/Users/ra312/miniconda3/etc/profile.d/conda.sh" ]; then
         . "/Users/ra312/miniconda3/etc/profile.d/conda.sh"
    else
		export PATH="/Users/ra312/miniconda3/bin:$PATH"
	fi
fi
unset __conda_setup
eval $(thefuck --alias)
source $HOME/.zsh/completion.zsh

autoload -Uz compinit

typeset -i updated_at=$(date +'%j' -r ~/.zcompdump 2>/dev/null || stat -f '%Sm' -t '%j' ~/.zcompdump 2>/dev/null)
if [ $(date +'%j') != $updated_at ]; then
  compinit -i
else
  compinit -C -i
fi

zmodload -i zsh/complist
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
eval "$(starship init zsh)"
eval "$(starship init zsh)"
source /Users/ra312/.zsh/completion.zsh
source /Users/ra312/.zsh/history.zsh

  autoload -U promptinit; promptinit
  prompt spaceship
alias cdir='source cdir.sh'
mkcdir ()
{
    mkdir -p --  &&
      cd -P -- 
}
