#!/bin/bash
DIR=`dirname $0`
ESLINT_PLUGIN=${DIR}/../eslint-plugin
RJS=${DIR}/node_modules/.bin/r.js

pushd $DIR
echo

echo Browserifying eslint...
browserify lib/eslint -s eslint > ${ESLINT_PLUGIN}/lib/orion-eslint.js

echo

echo Converting eslint rules to AMD...
${RJS} -convert lib/rules/ ${ESLINT_PLUGIN}/lib/rules

popd
