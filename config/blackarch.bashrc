#!/bash/bashrc

# /etc/bash.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $DISPLAY ]] && shopt -s checkwinsize
user=blackarch
PS1='\[\033[1;91m\][\u💀$user\]]\033[0m\] \W\$\[\033[1;96m\] '

case ${TERM} in
  Eterm*|alacritty*|aterm*|foot*|gnome*|konsole*|kterm*|putty*|rxvt*|tmux*|xterm*)
    PROMPT_COMMAND+=('printf "\033]0;%s@%s:%s\007" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"')

    ;;
  screen*)
    PROMPT_COMMAND+=('printf "\033_%s@%s:%s\033\\" "${USER}" "${HOSTNAME%%.*}" "${PWD/#$HOME/\~}"')
    ;;
esac

if [[ -r /usr/share/bash-completion/bash_completion ]]; then
  . /usr/share/bash-completion/bash_completion
fi
echo -e '\e[1;91m'
echo "
       ██████╗ ██╗      █████╗  ██████╗██╗  ██╗ █████╗ ██████╗  ██████╗██╗  ██╗
       ██╔══██╗██║     ██╔══██╗██╔════╝██║ ██╔╝██╔══██╗██╔══██╗██╔════╝██║  ██║
       ██████╔╝██║     ███████║██║     █████╔╝ ███████║██████╔╝██║     ███████║
       ██╔══██╗██║     ██╔══██║██║     ██╔═██╗ ██╔══██║██╔══██╗██║     ██╔══██║
       ██████╔╝███████╗██║  ██║╚██████╗██║  ██╗██║  ██║██║  ██║╚██████╗██║  ██║
       ╚═════╝ ╚══════╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝

                       ██╗     ██╗███╗   ██╗██╗   ██╗██╗  ██╗
                       ██║     ██║████╗  ██║██║   ██║╚██╗██╔╝
                       ██║     ██║██╔██╗ ██║██║   ██║ ╚███╔╝
                       ██║     ██║██║╚██╗██║██║   ██║ ██╔██╗
                       ███████╗██║██║ ╚████║╚██████╔╝██╔╝ ██╗
                       ╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚═╝  ╚═╝
"
echo -e '\e[0m'
