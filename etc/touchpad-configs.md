These configs were created for my personal machine, an ASUS X450LDV running on Ubuntu 15.04 with i3. These were created at June 20, 2015, and last modified at June 20, 2015.

For horizontal scrolling in i3

/usr/share/X11/xorg.conf.d/50-synaptics.conf
  Section "InputClass"
    ...
    Option "VertScrollDelta" "-111"
    Option "HorizScrollDelta" "-111"
    ...
  EndSection

Daemon for disabling touchpad scrolling and tapping while typing
  syndaemon -t -k -i 0.01
