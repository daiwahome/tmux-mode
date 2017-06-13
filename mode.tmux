#!/usr/bin/env bash

CURRENT_DIR="$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)"
source "$CURRENT_DIR/scripts/helpers.sh"

mode_interpolation="\#{mode}"
mode_command="#($CURRENT_DIR/scripts/mode.sh)"

do_interpolation() {
    local option="$1"
    local interpolated=${option/$mode_interpolation/$mode_command}

    echo "$interpolated"
}

update_tmux_option() {
    local option=$1
    local option_value=$(get_tmux_option "$option")
    local new_option_value=$(do_interpolation "$option_value")

    set_tmux_option "$option" "$new_option_value"
}

main() {
    update_tmux_option "status-right"
    update_tmux_option "status-left"
}
main

