
name = scaffold.sh
permissions=700
interpreter=/bin/dash

srcdir = src
parts += $(srcdir)/colors.sh
parts += $(srcdir)/cursor.sh
parts += $(srcdir)/messages.sh
parts += $(srcdir)/checks.sh

testsdir = tests
tests += $(testsdir)/colors.sh
tests += $(testsdir)/checks.sh

.PHONY: all test

all: $(name)
	@printf 'done\nRun `make test` to verify\n'

$(name): $(parts)
	@printf '#!%s\n\n' $(interpreter) > $@
	@printf '%s\n\n' 'set -eu' >> $@
	cat $(parts) >> $@
	chmod $(permissions) $@

test: tests.sh
	./$<

tests.sh: Makefile $(name) $(tests)
	cat $(name) $(tests) > $@
	chmod 700 $@
