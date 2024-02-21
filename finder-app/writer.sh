#!/bin/bash

set -e

if [[ $# != 2 ]]; then
  echo "Usage: $0 <full_path_to_file> <string>"
  exit 1
fi

writefile=${1}
writestr=${2}

# May not work with relative paths...
# the instructions do say it must be a full path
dirpath=$(dirname ${writefile})
if [[ ! -d ${dirpath} ]]; then
  echo "Creating path: ${dirpath}"
  mkdir -p ${dirpath}
fi

echo "${writestr}" > ${writefile}
