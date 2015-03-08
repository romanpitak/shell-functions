# MESSAGES

basic message printing

    pr_message() {
        pr_align
        printf '%s\n' "$1"
    }

specific messages

    pr_message_failed() {
        pr_message "$(pr_color_red '[FAILED]')"
    }

    pr_message_installing() {
        pr_message 'installing...'
    }

    pr_message_ok() {
        pr_message "$(pr_color_green '[OK]')"
    }
