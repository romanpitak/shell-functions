# Check for executable files

## `pr_check_command(command, installer)`

check if command is present, if not try to install it with installer if set

    pr_check_command() {
        printf 'Checking: "%s" ' "$1"
        if ! command -v "$1" >/dev/null 2>&1; then
            if ! test -n "${2:+1}"; then
                pr_message_failed
                exit 1
            else
                pr_message 'installing...'
                $2
                pr_check_command "$1"
            fi
        fi
        pr_message_ok
        return 0
    }
