#!/bin/sed -f

s/#.*//         # remove comments

/^\s*$/d        # remove empty lines

s/^\s*//        # unindent
