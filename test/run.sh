pub global activate --source git https://github.com/avoivo/coverage2coveralls.git

sudo start xvfb

which content_shell
if [[ $? -ne 0 ]]; then
  $DART_SDK/../chromium/download_contentshell.sh
  unzip content_shell-linux-x64-release.zip

  cs_path=$(ls -d drt-*)
  PATH=$cs_path:$PATH
fi


#!/bin/bash -e

# run coveralls on background
coveralls=$(pub global run coverage2coveralls -t $TOKEN -r &)
echo -e "$coveralls"


# run a set of Dart Unit tests that
# rely on the the DOM
results=$(timeout 30 content_shell --args -remote-debugging-port=9991  test/data_service_test.html)
echo -e "$results"

# check to see if DumpRenderTree tests
# fails, since it always returns 0
if [[ "$results" == *"FAIL"* ]]
then
  exit 1
fi

#analysis=$(dart_analyzer web/*.dart)
#echo -e "$analysis"
#if [[ "$results" != "" ]]
#  then exit 1
#fi



exit 0