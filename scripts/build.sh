#!/bin/bash

# variables
basedir=`dirname "${0}"`
workdir=`dirname "${basedir}"`
builddir="${workdir}/es"
packbin="${basedir}/readpack.js"
repourl=`${packbin} repository.url`
repover=`${packbin} version`

# function dev() {
  # webpack-dev-server --config ./scripts/config/webpack.dev.js --watch
  # mocha --reporter spec --inspect-brk --debug-brk --require ts-node/register ./test/**/*.spec.ts -w
# }

# function test() {
  # mocha --require ts-node/register ./test/**/*.spec.ts
# }

function build() {
  rm -rf "${builddir}"
  tsc
}

command="${1}"
if [ "$command" == "dev" ];then
  dev
elif [ "$command" == "test" ];then
  test
else
  build
fi