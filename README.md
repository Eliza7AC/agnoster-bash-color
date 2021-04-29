# agnoster-bash-color
This configuration of agnoster theme is used to have history line, time and username in different colors. There are two available configurations: **random colors** and **fixed colors**. Choose the one you prefer. :cupid:

### Prerequisites

[Oh-My-Bash](https://ohmybash.nntoan.com/) and [Agnoster theme](https://github.com/ohmybash/oh-my-bash/wiki/Themes) installed


## Script 1 ~ random colors

This configuration is aimed to have changing colors every time the user runs a command in terminal.

<img src="https://github.com/manialinux/agnoster-bash-color/blob/main/agnoster-bash-random-color.png" alt="drawing" width="500"/>


## Script 2 ~ fixed colors 

This configuration enables to have fixed colors in terminal.

<img src="https://github.com/manialinux/agnoster-bash-color/blob/main/agnoster-bash-fixed-color.png" alt="drawing" width="500"/>

### How to proceed

:black_circle: All you have to do is add the code from file ( [theme-random-color.sh](https://github.com/manialinux/agnoster-bash-color/blob/main/theme-random-color.sh) or [theme-fixed-color.sh](https://github.com/manialinux/agnoster-bash-color/blob/main/theme-fixed-color.sh) according to what your choose) to your configuration file of agnoster theme (which should be located at `~/.oh-my-bash/themes/agnoster/agnoster.theme.sh` )

:black_circle: **Be careful**: some functions like prompt_context() and build_prompt() already exist in your config file. Please, comment them.

### Optional

You can change colors in the configuration file as you wish, in functions of your choice (prompt_historyline, prompt_time, prompt_context), as respecting the following syntax:

`prompt_segment colorBackground colorForeground infoToDisplay`

If you dopn't want to display some informations (line history, time or username), go to build_prompt() function (at the end of the config file) and comment the function(s) you want to hide.

### In any case, don't forget to update config file with the following command in /home/user :
`source .bashrc`
