#function preexec {
  #emulate -L zsh
  #local -a cmd; cmd=(${(z)1})
  #title $cmd[1]:t "$cmd[2,-1]"
#}

function zsh_stats() {
  history | awk '{print $2}' | sort | uniq -c | sort -rn | head
}

function uninstall_oh_my_zsh() {
  /bin/sh $ZSH/tools/uninstall.sh
}

function upgrade_oh_my_zsh() {
  /bin/sh $ZSH/tools/upgrade.sh
}
