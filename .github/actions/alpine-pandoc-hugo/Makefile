.PHONY: all
all: Dockerfile
	docker build -t debian-pandoc-hugo -f Dockerfile .

.PHONY: clean
clean:
	docker rmi debian-pandoc-hugo
