# TNL: custom .bash_profile, invokes .profile and starts X (on the first console).

# Execution chain: .bash_profile -> .profile -> .bashrc -> .bash_custom.
# Currently `.profile`, installed with bash, invokes `.bashrc` automatically.

if [ -f "$HOME/.profile" ]; then
    . "$HOME/.profile"
fi

clear

if [[ ! ${DISPLAY} && ${XDG_VTNR} == 1 ]]; then
    exec startx -- -nolisten tcp
fi

