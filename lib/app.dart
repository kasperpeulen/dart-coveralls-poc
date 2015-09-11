library app;

import 'package:angular/angular.dart';

import 'main_component.dart';
import 'data_service.dart';

class AppModule extends Module {
  AppModule() {

    bind(DataService);
    bind(MainComponent);
    
  }
}


