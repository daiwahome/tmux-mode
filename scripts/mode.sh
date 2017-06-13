#!/usr/bin/env bash

CURRENT_DIR="$(cd $(dirname ${BASH_SOURCE[0]}) && pwd)"
source "$CURRENT_DIR/helpers.sh"

string_normal='NORMAL'
string_prefix='PREFIX'
string_mode=' MODE '

function print_mode() {
    local normal="#[bg=$(get_tmux_option '@blue' 'blue')] $string_normal "
    local prefix="#[bg=$(get_tmux_option '@green' 'green')] $string_prefix "
    local mode="#[bg=$(get_tmux_option '@red' 'red')] $string_mode "
    local fallback="#{?client_prefix,$prefix,$normal}"

    echo "#[fg=black]#{?pane_in_mode,$mode,$fallback}#[default]"
}

print_mode

