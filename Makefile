here=`pwd`

all : nstringtest

nstringtest:
	./fab/fab ${here}/strings.ohm ${here}/strings.fab ${here}/emptysupport.js <${here}/test.txt

identity:
	./fab/fab ${here}/strings.ohm ${here}/identity-strings.fab ${here}/emptysupport.js <${here}/test.txt

install: repos npmstuff

repos:
	multigit -r

npmstuff:
	npm install ohm-js yargs atob pako
