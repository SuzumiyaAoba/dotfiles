case ${OSTYPE} in
    darwin*)
        export SDKMAN_DIR=$(brew --prefix sdkman-cli)/libexec
    ;;
    linux*)
    # setting for linux
    ;;
esac

[[ -s "${SDKMAN_DIR}/bin/sdkman-init.sh" ]] && source "${SDKMAN_DIR}/bin/sdkman-init.sh"
