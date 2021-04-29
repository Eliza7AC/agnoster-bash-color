#########################
#########################
##### Choice colors #####

array_color[0]="black"
array_color[1]="red"
array_color[2]="green"
array_color[3]="yellow"
array_color[4]="blue"
array_color[5]="magenta"
array_color[6]="cyan"
array_color[7]="orange"
array_color[8]="white"

# choice of colors with random index
# each color has to differ from its neighbor
randomH=$(( RANDOM % 8 ))
randomT=$(( RANDOM % 8 ))
randomU=$(( RANDOM % 8 ))




#######################
#### Color History ####
#######################

# Display history line
prompt_historyline(){
	randomH=$(( RANDOM % 8 ))
	prompt_segment ${array_color[$randomH]} white ' \! '
}



#######################
###### Color Time #####
#######################

# Display time
prompt_time(){
	randomT=$(( RANDOM % 8 ))
	
	while [ $randomT = $randomH ]
	do
		randomT=$(( RANDOM % 8 ))
	done
	 
	prompt_segment ${array_color[$randomT]} white ' [\A] '
}



#######################
###### Color User #####
#######################

# Context: user@hostname (who am I and where am I)
prompt_context() {
    local user=`whoami`
    
  	randomU=$(( RANDOM % 8 ))
  	
		while [ $randomU = $randomT ] || [ $randomU = $randomH ] || [ $randomU = 4 ]
		do
			randomU=$(( RANDOM % 8 ))
		done	

    if [[ $user == $DEFAULT_USER || $user != $DEFAULT_USER || -n $SSH_CLIENT ]]; then
    		# green is the color of background
    		# white is the color of foreground  		
    		
        prompt_segment ${array_color[$randomU]} white " $user@\h "        
    fi
}





build_prompt() {
    [[ ! -z ${AG_EMACS_DIR+x} ]] && prompt_emacsdir
    prompt_status
    prompt_historyline
    prompt_time
    #[[ -z ${AG_NO_HIST+x} ]] && prompt_histdt
    [[ -z ${AG_NO_CONTEXT+x} ]] && prompt_context
    prompt_virtualenv
    prompt_dir
    prompt_git
    prompt_end

}
