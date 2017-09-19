if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

# Colors for Light Terminal Themes
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH

##
# Your previous /Users/darneson/.bash_profile file was backed up as /Users/darneson/.bash_profile.macports-saved_2017-08-28_at_12:40:51
##

# MacPorts Installer addition on 2017-08-28_at_12:40:51: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

