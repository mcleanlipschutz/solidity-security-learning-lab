.PHONY: check build test fmt clean

check: fmt build test

fmt:
	forge fmt --check

build:
	forge build --sizes

test:
	forge test -vv

clean:
	forge clean
