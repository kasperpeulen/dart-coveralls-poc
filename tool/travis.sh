
results=$(content_shell --args --dump-render-tree test/data_service_test.html)
echo -e "$results"
 
# check to see if DumpRenderTree tests
# fails, since it always returns 0
if [[ "$results" == *"FAIL"* ]]
then
  exit 1
fi

if [ "$REPO_TOKEN" ]; then
  pub global activate dart_coveralls
  pub global run dart_coveralls report \
    --token $REPO_TOKEN \
    --retry 2 \
    --exclude-test-files \
    test/data_service_test.dart
fi