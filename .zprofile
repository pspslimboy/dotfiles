[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && PATH=$HOME/bin:$PATH QT_STYLE_OVERRIDE=gtk2 exec xinit ~/.xinitrc
[[ -z $DISPLAY && $XDG_VTNR -eq 2 ]] && PATH=$HOME/bin:$PATH QT_STYLE_OVERRIDE=gtk2 exec xinit ~/.xinitrc-gnome
