#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
export EDITOR=/usr/bin/vim
PATH=/usr/local/sbin:/usr/local/bin:/usr/bin:/usr/lib/jvm/default/bin:/usr/bin/site_perl:/usr/bin/vendor_perl:/usr/bin/core_perl:/home/joshua/bin:/home/joshua/programs/firefox/dev

export NVM_DIR="/home/joshua/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# add node bin directory to PATH if it exists
_OLD_PATH=$PATH
function updatePATHForNPM() {
if [ -d 'node_modules' ]
  then
    export PATH=$(npm bin):$_OLD_PATH
fi
}

function node-mode() {
  PROMPT_COMMAND=updatePATHForNPM
}

function node-mode-off() {
  unset PROMPT_COMMAND
  PATH=$_OLD_PATH
}
node-mode
