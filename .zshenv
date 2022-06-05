# ~/.zshenv
#           _
#   _______| |__   ___ _ ____   __
#  |_  / __| '_ \ / _ \ '_ \ \ / /
# _ / /\__ \ | | |  __/ | | \ V /
#(_)___|___/_| |_|\___|_| |_|\_/
#
#

export EDITOR=nvim
export TLDR_OS=linux
export CLICOLOR=1
export TERM=xterm-256color
export VISUAL=$EDITOR

#bat https://github.com/sharkdp/bat
#https://ttys3.dev/post/bat-a-cat-clone-with-wings/
export BAT_STYLE=plain
export BAT_THEME="TwoDark"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
export MANROFFOPT="-c"


## nnn
#https://www.bilibili.com/video/BV1Tz4y1y72r

export NNN_USE_EDITOR=1
export NNN_OPENER=nuke
export NNN_FIFO=/tmp/nnn.fifo
export NNN_SEL='/tmp/.sel'
export NNN_BMS='h:~;d:~/Download;c:~/.config'
export NNN_PLUG='p:preview-tui;i:imgview;o:fzopen;j:autojump'

# micro
export MICRO_TRUECOLOR=1
#
# 配置 GOPROXY 环境变量
#export GOPROXY=https://proxy.golang.com.cn,direct


# fzf
# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
export FZF_DEFAULT_OPTS='--height 60% --layout=reverse --border'

# 'junegunn/fzf', command line fuzzy finder
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_CTRL_T_OPTS="--preview 'bat --color=always --line-range :30 {}'"

export FZF_ALT_C_COMMAND="fd --type d . --hidden --exclude .git $FD_OPTIONS"
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -30'"

#[ -f ~/.config/zsh/fzf.zsh ] && source ~/.config/zsh/fzf.zsh

## skim eg. sk
#https://github.com/lotabout/skim
#export SKIM_DEFAULT_COMMAND="fd --type f || git ls-tree -r --name-only HEAD || rg --files || find ."
