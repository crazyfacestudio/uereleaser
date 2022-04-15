VERSION := $(shell cat VERSION)

default: build

test:
	go test ./...

build:
	go build

release:
	git tag v$(VERSION)
	git push origin v$(VERSION)