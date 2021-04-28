# agnoster-bash-color
This configuration is used to have history line and time in different colors with agnoster theme and [Oh-My-Bash](https://ohmybash.nntoan.com/).

There is two available configurations: **random colors** and **fixed colors**. Choose the one you prefer.

#### Prerequisite

[Oh-My-Bash](https://ohmybash.nntoan.com/) and [Agnoster theme](https://github.com/ohmybash/oh-my-bash/wiki/Themes) installed


## Script 1 ~ random colors

This configuration is aimed to have changing colors every time the user enters a command in the terminal.

<img src="https://github.com/manialinux/agnoster-bash-color/blob/main/agnoster-bash-random-color.png" alt="drawing" width="500"/>

All you have to do is replace your configuration file (which should be located at `~.oh-my-bash/themes/agnoster/agnoster.theme.sh` ) by the content of [theme1.sh]().


## Script 2 ~ fixed colors 

This configuration allows to have fixed colors in terminal.

<img src="https://github.com/manialinux/agnoster-bash-color/blob/main/agnoster-bash-fixed-color.png" alt="drawing" width="500"/>

Then, open configuration file of agnoster theme with editor (configuration file is located at ~.oh-my-bash/themes/agnoster/agnoster.theme.sh).
For example, with gedit:
`gedit .oh-my-bash/themes/agnoster/agnoster.theme.sh`

Add the two news functions `prompt_historyline()` and `prompt_time()` from theme.sh file of this project to your config file.

Use the two others functions `prompt_context()` and `build_prompt()` from theme.sh file to replace already existing functions in your configuration file.


#### Optional

You can change colors in the configuration file as you wish, as following: `prompt_segment colorBackground colorForeground`

### In any case, don't forget to update config file with 
`source .bashrc`
