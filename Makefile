CLIENT_NAME=ambra-server

all: main.go
	export GO111MODULE="on"
	export GONOPROXY="none;"
	go build -o ${CLIENT_NAME}

clean:
	rm -f ${CLIENT_NAME}