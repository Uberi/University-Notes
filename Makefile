INPUT_FILES=$(wildcard */*.md)
OUTPUT_FILES=$(INPUT_FILES:.md=.html)

all: $(OUTPUT_FILES)

%.html: %.md templates/template.html
	pandoc "--output=$@" \
		--data-dir=. --template=template.html \
		--mathjax --variable=pagetitle:$(*F)\ \|\ Anthony\ Zhang "$<"

clean:
	rm $(OUTPUT_FILES)
