# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/thomas/.sdkman"
[[ -s "/home/thomas/.sdkman/bin/sdkman-init.sh" ]] && source "/home/thomas/.sdkman/bin/sdkman-init.sh"
