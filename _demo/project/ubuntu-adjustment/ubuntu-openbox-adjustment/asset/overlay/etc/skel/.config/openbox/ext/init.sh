

################################################################################
### Head: Base / Init
##

## * https://github.com/samwhelp/skel-project-plan

## set -e ##

#echo $THE_BASE_DIR_PATH
source "$THE_BASE_DIR_PATH/base.sh"

base_var_init

base_var_dump



##
### Tail: Base / Init
################################################################################


################################################################################
### Head: Func / Init
##

## extra function
source "$THE_EXT_DIR_PATH/util.sh"
source "$THE_EXT_DIR_PATH/wallpaper.sh"
source "$THE_EXT_DIR_PATH/openbox.sh"

##
### Tail: Func / Init
################################################################################
