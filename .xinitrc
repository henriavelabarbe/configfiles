xsetroot -solid "#002B36"
setxkbmap be
trayer --edge top --align right --SetDockType true --SetPartialStrut true --expand true --widthtype percent --width 5 --transparent true --tint 0x000000 --height 12 &
xsetroot -cursor_name left_ptr
xrdb .Xresources
#exec ck-launch-session wmaker
#exec wmaker
exec xmonad
