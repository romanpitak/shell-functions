# MESSAGES

basic message printing

    pr_message() {
        if test 2 -eq $#; then
            printf '%s' "$1"
            pr_align
            printf '%s\n' "$2"
        else
            pr_align
            printf '%s\n' "$1"
        fi
    }

specific messages

    pr_message_failed() {
        pr_message "$(pr_color_red '[FAILED]')"
    }

    pr_message_ok() {
        pr_message "$(pr_color_green '[OK]')"
    }
