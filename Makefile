## Tools
## In case this doesn't work, set the path manually (use absolute paths).
DOCKER = docker run --rm -i -v "$(shell pwd):/data" -w "/data" -u "$(shell id -u):$(shell id -g)" --entrypoint="make" alpine-pandoc-hugo
PANDOC = /usr/local/bin/pandoc
HUGO   = /usr/bin/hugo


## Data-Dir: Path to the git submodule of Pandoc-Lecture
## Resource-Path: Where to search for bib files and other resources?
## (Note: If pandoc is used via a Docker container, DATADIR must be the
## working directory (or a subdirectory), as the working directory will
## be mounted into the Docker container! A reference to a parent directory
## of the working directory (as in this example) therefore does not work
## when using the Docker container!)
PANDOCDIRS       = --data-dir=pandoc --resource-path=".:pandoc"


## Source files, path prefix to sources, and lecture prefix
## either defined here (all files) or given at cmd line like `make vl02`
CONTENT       = content
SRC           = $(patsubst $(MD)/%.md,%,$(wildcard $(MD)/*.md))


## Targets

## create slides and web page
## run Pandoc and Hugo directly
all: slides web

## create slides and web page
## use Docker image alpine-pandoc-hugo and run 'make all' inside the container
docker-all:
	$(DOCKER) all

## create slides
SLIDEOPTIONS        = $(PANDOCDIRS) -d slides -f markdown+rebase_relative_paths
HTMLOPTIONS         = $(PANDOCDIRS) -d html -f markdown+rebase_relative_paths
HTMLTEMPLATEOPTIONS = $(PANDOCDIRS) -d htmltemplate
slides:
	$(PANDOC) $(SLIDEOPTIONS) -o content/tbd/testseite/testseite.pdf content/tbd/testseite/index.md
	$(PANDOC) $(HTMLOPTIONS) -o content/tbd/testseite/testseite.html content/tbd/testseite/index.md

## create web page
web:
	$(HUGO) --minify



$(SRC): %: $(ID)_%.pdf $(ID)_%.html


## Auxiliary Targets

SLIDES        = $(SRC:%=$(ID)_%.pdf)
HTML          = $(SRC:%=$(ID)_%.html)
WEB           = $(WORKDIR)/docs

$(ID)_%.pdf: $(MD)/%.md
	$(PANDOC) $(SLIDEOPTIONS) -o $@ $<

$(ID)_%.html: $(MD)/%.md
	$(PANDOC) $(HTMLTEMPLATEOPTIONS) $< | $(PANDOC) $(HTMLOPTIONS) -o $@


## build Docker image alpine-pandoc-hugo locally
docker-image:
	cd .github/actions/alpine-pandoc-hugo && make clean all

## clean up
clean:
	rm -rf $(SLIDES) $(HTML) $(WEB)


.PHONY: all docker-all docker-image slides web clean
