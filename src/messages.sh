
#
# MESSAGES
#

pr_message() {
    pr_align
    printf '%s\n' "$1"
}

pr_message_failed() {
    pr_message "$(pr_color_red '[FAILED]')"
}

pr_message_installing() {
    pr_message 'installing...'
}

pr_message_ok() {
    pr_message "$(pr_color_green '[OK]')"
}
