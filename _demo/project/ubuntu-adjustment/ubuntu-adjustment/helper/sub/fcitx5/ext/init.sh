

################################################################################
### Head: Path / Init
##

##
## Key Path
##

THE_SUB_FCITX5_MODULE_NAME="fcitx5"

THE_SUB_FCITX5_BASE_DIR_NAME="${THE_SUB_FCITX5_MODULE_NAME}"
THE_SUB_FCITX5_BASE_DIR_PATH="${THE_SUB_DIR_PATH}/${THE_SUB_FCITX5_BASE_DIR_NAME}"

THE_SUB_FCITX5_EXT_DIR_PATH="${THE_SUB_FCITX5_BASE_DIR_PATH}/ext"
THE_SUB_FCITX5_BIN_DIR_PATH="${THE_SUB_FCITX5_BASE_DIR_PATH}/bin"

THE_SUB_FCITX5_PACKAGE_LIST_INSTALL_FILE_PATH="${THE_SUB_FCITX5_BASE_DIR_PATH}/share/${THE_SUB_FCITX5_BASE_DIR_NAME}/${THE_PACKAGE_LIST_INSTALL_FILE_NAME}"
THE_SUB_FCITX5_PACKAGE_LIST_REMOVE_FILE_PATH="${THE_SUB_FCITX5_BASE_DIR_PATH}/share/${THE_SUB_FCITX5_BASE_DIR_NAME}/${THE_PACKAGE_LIST_REMOVE_FILE_NAME}"


##
### Tail: Path / Init
################################################################################


################################################################################
### Head: Func / Init
##

##
## Load Function
##

source "${THE_SUB_FCITX5_EXT_DIR_PATH}/${THE_SUB_FCITX5_MODULE_NAME}.sh"


##
### Tail: Func / Init
################################################################################
