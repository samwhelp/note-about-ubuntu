

################################################################################
### Head: SubCmd
##

act_run_help () {
	main_usage "$@"
}

act_run_version () {
	main_version "$@"
}

act_run_self_update () {
	util_self_update "$@"
}

act_run_self_actions () {
	util_self_actions "$@"
}

<?php include_once(dirname(__DIR__) . '/Model/Action.sh'); ?>

##
### Tail: SubCmd
################################################################################
