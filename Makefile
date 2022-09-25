
NAME := tview_study

build:
	for arch in amd64 arm64; do \
		CGO_ENABLED=0 GOOS=$$os GOARCH=$$arch go build -o bin/$$arch/$(NAME) main.go; \
	done

clean:
	rm bin/* -rf

.PHONY: build clean
