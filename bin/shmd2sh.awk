#!/usr/bin/awk -f

("markdown" != state) {
    if ($0 ~ /^    /) {
        sub(/^    /, "")
        print
    } else {
        state = "markdown"
    }
}

/^$/ {
    state = "reset"
}
