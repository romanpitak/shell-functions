
target = scaffold.sh
permissions=700
interpreter=/bin/dash

srcdir = src
parts += $(srcdir)/colors.sh.md
parts += $(srcdir)/cursor.sh.md
parts += $(srcdir)/messages.sh.md
parts += $(srcdir)/checks.sh.md

builddir=$(build)

testsdir = tests
tests += $(testsdir)/colors.sh
tests += $(testsdir)/checks.sh

.PHONY: all test

all: $(target)
	@printf 'done\nRun `make test` to verify\n'

$(target): $(parts)
	@printf '#!%s\n\n' $(interpreter) > $@
	@printf '%s\n\n' 'set -eu' >> $@
	cat $(parts) | bin/shmd2sh.awk >> $@
	chmod $(permissions) $@

test: tests.sh
	./$<

tests.sh: Makefile $(name) $(tests)
	cat $(target) $(tests) > $@
	chmod 700 $@
