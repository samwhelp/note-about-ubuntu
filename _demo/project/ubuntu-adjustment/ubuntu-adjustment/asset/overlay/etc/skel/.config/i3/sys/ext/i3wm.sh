

################################################################################
### Head: Sys / I3wm / wm_theme
##

sys_i3wm_get_wm_theme () {

	sys_profile_theme_config_load

}

sys_i3wm_set_wm_theme () {

	sys_profile_subject_config_prepare "theme" "$1"

	profile_theme_apply


}

sys_i3wm_set_wm_theme_default () {

	sys_profile_subject_config_prepare "theme" "main"

	profile_theme_apply


}

sys_i3wm_set_wm_theme_favorite () {

	sys_profile_subject_config_prepare "theme" "nord_aurora"

	profile_theme_apply


}

##
### Tail: Sys / I3wm / wm_theme
################################################################################


################################################################################
### Head: Sys / I3wm / keybind
##

sys_i3wm_get_keybind () {

	sys_profile_keybind_config_load

}

sys_i3wm_set_keybind () {

	sys_profile_subject_config_prepare "keybind" "$1"

	profile_keybind_apply


}

sys_i3wm_set_keybind_default () {

	sys_profile_subject_config_prepare "keybind" "default"

	profile_keybind_apply


}

sys_i3wm_set_keybind_favorite () {

	sys_profile_subject_config_prepare "keybind" "main"

	profile_keybind_apply


}

##
### Tail: Sys / I3wm / keybind
################################################################################


################################################################################
### Head: Sys / I3wm / rule
##

sys_i3wm_get_rule () {

	sys_profile_rule_config_load

}

sys_i3wm_set_rule () {

	sys_profile_subject_config_prepare "rule" "$1"

	profile_rule_apply


}

sys_i3wm_set_rule_default () {

	sys_profile_subject_config_prepare "rule" "default"

	profile_rule_apply


}

sys_i3wm_set_rule_favorite () {

	sys_profile_subject_config_prepare "rule" "main"

	profile_rule_apply


}

##
### Tail: Sys / I3wm / rule
################################################################################
