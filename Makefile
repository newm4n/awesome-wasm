.PHONY: all test clean build docker

build-wasm:
	export GO111MODULE=on; \
	export GOOS=js; \
	export GOARCH=wasm; \
	go build -o web/awesome.wasm StartWasmHere.go

build-server:
	export GO111MODULE=on; \
	go build -o awesome.app StartServerHere.go

build: build-wasm build-server