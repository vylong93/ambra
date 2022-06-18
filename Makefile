CLIENT_NAME=ambra-server

# Setup the -ldflags option for go build versioning
VERSION=`git describe --tags`
BUILDTIME=`date +%FT%T%z`
LDFLAGS=-ldflags "-w -s -X main.Version=${VERSION} -X main.BuildTime=${BUILDTIME}"

all: main.go
	export GO111MODULE="on"
	export GONOPROXY="none;"
	go build ${LDFLAGS} -o ${CLIENT_NAME}

clean:
	rm -f ${CLIENT_NAME}

.PHONY: clean
