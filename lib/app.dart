library app;

import 'package:angular2/angular2.dart';

import 'main_component.dart';
import 'data_service.dart';


main() async {
  await bootstrap(MainComponent, [DataService]);
}


