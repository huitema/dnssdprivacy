TARGET = draft-huitema-dnssd-privacy
SOURCE = ${TARGET}.xml
TRANSLATE = xml2rfc
TXT  = ${TARGET}.txt
HTML = ${TARGET}.html
RM = rm -f

.PHONY: all,txt,html,clean

all: txt html

txt: ${SOURCE}
	${TRANSLATE} --text  ${SOURCE}

html: ${SOURCE}
	${TRANSLATE} --html  ${SOURCE}

clean:
	${RM} ${TXT} ${HTML}
