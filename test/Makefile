.PHONY: test

test:
	set -e; \
	for i in *.sh; do \
	  ./$$i || { echo "Test $$i failed"; false; }; \
	done
