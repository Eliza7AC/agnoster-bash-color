# agnoster-bash-color
This configuration is used to have history line and time in different colors with agnoster theme and [Oh-My-Bash](https://ohmybash.nntoan.com/).

![GitHub Logo](https://github.com/manialinux/agnoster-bash-color/blob/main/agnoster-bash-color.png)



### Step 1

Firstly, install and use Oh-My-Bash and agnoster theme.

### Step 2

Then, open configuration file of agnoster theme with editor (configuration file is located at ~.oh-my-bash/themes/agnoster/agnoster.theme.sh).

Add the two news functions `prompt_historyline()` and `prompt_time()` from theme.sh file of this project.

Use the two others functions `prompt_context()` and `build_prompt()` from theme.sh file to replace already existing functions in your configuration file.

Save the changes and enter following command to update configuration file:
`source .bashrc`

### Step 3

Change colors in your configuration file as you wish, as following: `prompt_segment colorBackground colorForeground`
