all: run

build:
	bundle exec jekyll

clean:
	rm -rf _site

run:
	bundle exec jekyll serve --watch

install:
	bundle install --path .bundle

.PHONY: build clean run install
