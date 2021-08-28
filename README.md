# Termux-Kali-Terminal
Change termux terminal look like Kali LInux or better. No external git required, you just need one liner commands you will get here. Must watch full video to set it up.


Hopw to copy the color properties as shown in the video?
Use the commands

<pre> cd .termx
cp colors.properties ../;rm colors.properties
wget https://raw.githubusercontent.com/efxtv/Termux-Kali-Terminal/main/colors.properties
</pre>

Hopw to change termux terminal should look like Kali Linux Terminal?
Use the commands... Where to paste? for that you need to watch the video.

<pre> cd .termx
PS1='\[\e[1;34m\]\e[32m┌──\e[0m\e[92m(\e[0m\e[37mKALI\e[0m\e[5m💀\e[25m\e[37mLINUX\e[0m\e[92m)\e[0m\e[32m-\e[0m[~]\n\e[32m└─\e[0m\e[92m≽\e[0m \[\e[0;37m\]'
</pre>
