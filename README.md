# Kali-LInux-Terminal-In-Termux
<a href="https://youtu.be/qDU-N_YvvIE"><img src="https://raw.githubusercontent.com/efxtv/Kali-LInux-Terminal-In-Termux/main/Customize%20Termux%20Black%20Shell%20Make%20Termux%20terminal%20Look%20Like%20Kali%20Linux%20Nethunter.png" alt="EFX TV"></a>


Change termux terminal look like Kali LInux or better. No external git required, you just need one liner commands you will get here. Must watch full video to set it up.


Hopw to copy the color properties as shown in the video?
Use the commands
<pre> cd $HOME </pre>
<pre> cd .termux</pre>
# note: color7 is the text color for termux input
<pre> cp colors.properties ../;rm colors.properties</pre>
<pre> wget https://raw.githubusercontent.com/efxtv/Kali-LInux-Terminal-In-Termux/main/colors.properties </pre>

Hopw to change termux terminal should look like Kali Linux Terminal?
Paste the command in the location <b>/data/data/com.termux/files/usr/etc/bash.bashrc</b> the commands... Where to paste? for that you need to watch the video.

<h2>Script to add Kali LInux Terminal in Termux</h2>
<b>nano /data/data/com.termux/files/usr/etc/bash.bashrc</b>
<pre>
EMOJIS=(🥱 😏 😎 👊  👍 💀️ 😉️ 🤔️ 🙄️ 😣️ 😳️ 💥 🔥 😵‍ 💫 ㉿)
RANDOM_EMOJI() {
  SELECTED_EMOJI=${EMOJIS[$RANDOM % ${#EMOJIS[@]}]};
  echo $SELECTED_EMOJI;
} </pre></pre>


#Place any one at the end of the file
#Normal Withour imoji
<pre>PS1='\[\e[1;34m\]\e[92m\]┌──(\e[37m\]Kali💀️Linux\e[92m\])-\e[0m\]\e[92m\][\e[0m\]\e[37m\]~\e[0m\]\e[92m\]]\e[0m\]\e[0m\]\e[92m\]\n└─≽ \e[0m\]'
</pre>

<pre>#With imoji animation
 PS1='\[\e[1;34m\]\e[92m\]┌──(\e[37m\]EFX$(RANDOM_EMOJI)Tv\e[92m\])-\e[0m\]\e[92m\][\e[0m\]\e[37m\]~\e[0m\]\e[92m\]]\e[0m\]\e[0m\]\e[92m\]\n└─≽ '
</pre>

