

################################################################################
### Head: Path / Init
##

##
## Key Path
##

THE_SUB_WM_OPENBOX_MODULE_NAME="openbox"

THE_SUB_WM_OPENBOX_BASE_DIR_NAME="${THE_SUB_WM_OPENBOX_MODULE_NAME}"
THE_SUB_WM_OPENBOX_BASE_DIR_PATH="${THE_SUB_WM_DIR_PATH}/${THE_SUB_WM_OPENBOX_BASE_DIR_NAME}"

THE_SUB_WM_OPENBOX_EXT_DIR_PATH="${THE_SUB_WM_OPENBOX_BASE_DIR_PATH}/ext"
THE_SUB_WM_OPENBOX_BIN_DIR_PATH="${THE_SUB_WM_OPENBOX_BASE_DIR_PATH}/bin"

THE_SUB_WM_OPENBOX_PACKAGE_LIST_INSTALL_FILE_PATH="${THE_SUB_WM_OPENBOX_BASE_DIR_PATH}/share/${THE_SUB_WM_OPENBOX_BASE_DIR_NAME}/${THE_PACKAGE_LIST_INSTALL_FILE_NAME}"
THE_SUB_WM_OPENBOX_PACKAGE_LIST_REMOVE_FILE_PATH="${THE_SUB_WM_OPENBOX_BASE_DIR_PATH}/share/${THE_SUB_WM_OPENBOX_BASE_DIR_NAME}/${THE_PACKAGE_LIST_REMOVE_FILE_NAME}"


##
### Tail: Path / Init
################################################################################


################################################################################
### Head: Func / Init
##

##
## Load Function
##

source "${THE_SUB_WM_OPENBOX_EXT_DIR_PATH}/${THE_SUB_WM_OPENBOX_MODULE_NAME}.sh"

##
### Tail: Func / Init
################################################################################
