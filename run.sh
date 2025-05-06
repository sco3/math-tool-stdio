#!/usr/bin/env -S bash

set -xueo pipefail

jar=$(find $(dirname $(readlink -f $0)) -name math-tool-\*-runner.jar | grep -v /gen/ )

stat $jar

tee $(pwd)/run.in | java -jar "$jar" --quiet | tee $(pwd)/run.out
