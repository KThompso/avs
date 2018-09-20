all:
.PHONY: apexdoc

apexdoc:
	java -jar bin/ApexDoc-1.2.0.jar -s src/classes/ -t docs/ \
		-g 'https://github.com/KThompso/avs/blob/master/src/classes/' \
		-p 'public'
