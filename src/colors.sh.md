
#
# COLORS
#
# http://unix.stackexchange.com/questions/9957/how-to-check-if-bash-can-print-colors
#

pr_echo() {
    printf '%s\n' "$1"
}

pr_color_red()      { pr_echo "$1"; }
pr_color_green()    { pr_echo "$1"; }
pr_color_yellow()   { pr_echo "$1"; }
pr_color_blue()     { pr_echo "$1"; }
pr_color_magenta()  { pr_echo "$1"; }
pr_color_cyan()     { pr_echo "$1"; }

if command -v tput >/dev/null 2>&1; then
    if tput colors >/dev/null 2>&1; then

        pr_color_print() {
            tput setaf $1
            printf '%s' "$2"
            tput setaf 9
        }

        pr_color_red()      { pr_color_print 1 "$1"; }
        pr_color_green()    { pr_color_print 2 "$1"; }
        pr_color_yellow()   { pr_color_print 3 "$1"; }
        pr_color_blue()     { pr_color_print 4 "$1"; }
        pr_color_magenta()  { pr_color_print 5 "$1"; }
        pr_color_cyan()     { pr_color_print 6 "$1"; }

    fi
fi
