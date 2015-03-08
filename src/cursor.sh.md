# Move the cursor

define alignment

    pr_align_column="${pr_align_column:-70}"

no `tput` fallback

    pr_align() {
        printf "\n${pr_align_column}%s" ''
    }


if `tput` is available

    if command -v tput >/dev/null 2>&1; then
        pr_align() {
            tput hpa "${pr_align_column}"
        }
    fi
