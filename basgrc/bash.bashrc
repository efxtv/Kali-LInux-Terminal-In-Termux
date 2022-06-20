# Command history tweaks:
# - Append history instead of overwriting
#   when shell exits.
# - When using history substitution, do not
#   exec command immediately.
# - Do not save to history commands starting
#   with space.
# - Do not save duplicated commands.
shopt -s histappend
shopt -s histverify
export HISTCONTROL=ignoreboth

#animation start
#EMOJIS=(🥱 😏 😎 👊  👍 💀️ 😉️ 🤔️ 🙄️ 😣️ 😳️ 💥 🔥 😵‍ ㉿)
#RANDOM_EMOJI() {
#  SELECTED_EMOJI=${EMOJIS[$RANDOM % ${#EMOJIS[@]}]};
#  echo $SELECTED_EMOJI;
#} 
#anomation end

PROMPT_DIRTRIM=2
#PS1='\[\e[0;31m\]\[\e[0;31m\]┌──(\[\e[0;91m\]EFX$(RANDOM_EMOJI)Tv\[\e[0;31m\])\[\e[0;31m\]-\[\e[0;31m\]\[\e[0;31m\][\e[0m\]\[\e[0;33m\]\w\[\e[0m\]\[\e[0;31m\]]\[\e[0m\]\[\[\e[0m\]\n\[\e[0;31m\]└\[\e[0;31m\]●\[\e[0;37m\]●\[\e[0;32m\]● \[\e[0m\]'
#mms ps1 starts
fro=$(free -h|grep Mem|awk '{print $4}')
mmo=$(ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -10|grep -v PID|awk '{print $NF" "$1}'|sort -rk3|sed 's#^#MMS #g'|head -1)

PS1='\[\e[0;31m\]\[\e[0;31m\]┌──▶(\[\e[0;91m\]EFX Tv\[\e[0;31m\])\[\e[0;31m\]──\[\e[0;31m\]\[\e[0;31m\][\e[0m\]\[\e[0;33m\]\W\[\e[0m\]\[\e[0;31m\]]\[\e[0m\]\[\[\e[0m\]\[\e[0;31m\]──\[\e[0;31m\]\[\e[0;31m\][\e[0m\]\[\e[0;33m$mmo $fro\[\e[0m\]\[\e[0;31m\]]\[\e[0m\]\[\[\e[0m\]\n\[\e[0;31m\]└\[\e[0;31m\]●\[\e[0;37m\]●\[\e[0;32m\]● \[\e[0m\]'
#mms ps1 ends
# Handles nonexistent commands.
# If user has entered command which invokes non-available
# utility, command-not-found will give a package suggestions.
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi
alias sdcard='cd /sdcard'
alias downloads='cd /sdcard/Download'
alias ifconfig='ifconfig 2>/dev/null'
alias usr='cd /data/data/com.termux/files/usr'
alias cd1="cd .."
alias cd2="cd ../.."
alias cd3="cd ../../.."
alias cd4="cd ../../../.."
alias cd5="cd ../../../../.."
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias diff='colordiff'
alias tab='column -t'
alias reload='termux-reload-settings'
alias remove='pkg remove'
alias i='pkg install'
ip(){
ifconfig|grep inet|sed 's#inet 127.0.0.1#LOCAL 127.0.0.1#g;s#inet 192#BEIDG 192#g;s#inet#OTHER#g'|awk '{print "\033[0;32m"$1":\033[0m","\t"$2,"\t"$4}'
}

alias delete='rm -rf'
alias update='pkg update && pkg upgrade --yes'


lt(){
ls -lth|awk '{print "\033[0;32m"$1"\033[0m"" "$7"-"$6"-("$8")",$5,$NF}'|sed -e "1d"|sed "1i $(tput setaf 8)PERMISSIONS MODIFIED K/M FILE-NAME$(tput sgr0)"|column -t
}

la(){
ls -lath|awk '{print "\033[0;32m"$1"\033[0m"" "$7"-"$6"-("$8")",$5,$NF}'|sed -e "1d"|sed "1i $(tput setaf 8)PERMISSIONS MODIFIED K/M FILE-NAME$(tput sgr0)"|column -t
}

absolute(){
echo -e "$PWD/$1"
}

alias code='pv -qL 15'

center()
{
echo -e "$1"|sed  -e :a -e "s/^.\{1,$(tput cols)\}$/ & /;ta"
}
