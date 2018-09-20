all:
.PHONY: apexdoc

apexdoc:
	java -jar bin/apexdoc-1.1.7.jar \
		-s "$(realpath src/classes)" \
		-t "$(realpath docs)" \
		-g 'https://github.com/KThompso/avs/blob/master/src/classes/' \
		-p 'public' \
		-h "$(realpath ApexDocContent/projecthome.html)" \
		-a "$(realpath ApexDocContent/projectheader.html)"
	mv docs/ApexDocumentation/* docs
	rmdir docs/ApexDocumentation
