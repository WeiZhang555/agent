#!/bin/sh

install_gometalinter(){
	REPO="github.com/alecthomas/gometalinter"
	COMMIT="c89a599c3cf15a0034810515d6f922f64df2b6cd"
	go get -d github.com/alecthomas/gometalinter
    cd "$GOPATH/src/github.com/alecthomas/gometalinter"
    git checkout -q "$COMMIT"
    go build -o /usr/local/bin/gometalinter github.com/alecthomas/gometalinter
    GOBIN=/usr/local/bin gometalinter --install
}

echo "installing gometalinter"
install_gometalinter
