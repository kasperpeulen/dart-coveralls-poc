sudo start xvfb

which content_shell
if [[ $? -ne 0 ]]; then
  $DART_SDK/../chromium/download_contentshell.sh
  unzip content_shell-linux-x64-release.zip

  cs_path=$(ls -d drt-*)
  PATH=$cs_path:$PATH
fi


#!/bin/bash -e

# run a set of Dart Unit tests that
# rely on the the DOM
results=$(content_shell --args --dump-render-tree test/data_service_test.html)
echo -e "$results"

# check to see if DumpRenderTree tests
# fails, since it always returns 0
if [[ "$results" == *"Some tests failed"* ]]
then
  exit 1
fi

#analysis=$(dart_analyzer web/*.dart)
#echo -e "$analysis"
#if [[ "$results" != "" ]]
#  then exit 1
#fi

exit 0