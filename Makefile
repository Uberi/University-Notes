INPUT_FILES=$(wildcard */*.md)
OUTPUT_FILES=$(INPUT_FILES:.md=.html)

all: $(OUTPUT_FILES)

%.html: %.md templates/template.html
	pandoc "--output=$@" --from markdown --to html5 \
		--data-dir=. --template=template.html --katex \
		--variable=pagetitle:$(*F)\ \|\ Anthony\ Zhang "$<"

clean:
	rm $(OUTPUT_FILES)
