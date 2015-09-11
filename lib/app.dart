library app;

import 'package:angular/angular.dart';

import 'main_component.dart';

class AppModule extends Module {
  AppModule() {

    bind(MainComponent);
    
  }
}


