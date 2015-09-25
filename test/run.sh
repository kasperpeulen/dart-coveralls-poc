#pub global activate --source git https://github.com/avoivo/coverage2coveralls.git
 
sudo start xvfb

which content_shell
if [[ $? -ne 0 ]]; then
  $DART_SDK/../chromium/download_contentshell.sh
  unzip content_shell-linux-x64-release.zip

  cs_path=$(ls -d drt-*)
  PATH=$cs_path:$PATH
fi

pub run test -p content-shell

#!/bin/bash -e


# run a set of Dart Unit tests that
# rely on the the DOM
#results=$(content_shell --args --dump-render-tree test/data_service_test.html)
#echo -e "$results"

# check to see if DumpRenderTree tests
# fails, since it always returns 0
#if [[ "$results" == *"FAIL"* ]]
#then
  #exit 1
#fi

#analysis=$(dart_analyzer web/*.dart)
#echo -e "$analysis"
#if [[ "$results" != "" ]]
#  then exit 1
#fi



#results=$(content_shell -remote-debugging-port=9991  test/data_service_test.html &)
#echo -e "$results"


# run coveralls on background
# coveralls=$(pub global run coverage2coveralls -t $TOKEN -r)
# echo -e "$coveralls"

# content_shell -remote-debugging-port=9991  test/data_service_test.html
#pub global run coverage2coveralls -t $TOKEN -r

#sudo npm install -g concurrently
#concurrent "timeout 45 content_shell --remote-debugging-port=9991 test/data_service_test.html" "pub global run coverage2coveralls --token=$TOKEN --retry"

#exit 0