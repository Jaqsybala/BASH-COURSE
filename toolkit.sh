#!/bin/bash

PS3="Which utility do you want to run? " 
select script in "cruft_remover.sh" "folder_organiser.sh";
do  
    "$HOME/bash_course/scripts/$script"
    break
done
