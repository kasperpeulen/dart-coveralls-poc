library main;

import 'package:angular/angular.dart';

import 'data_service.dart';

@Component(
    selector: 'main',
    templateUrl: 'packages/coveralls/main.html',
    useShadowDom: false
    )
class MainComponent {

  DataService _service;

  List<String> data;

  MainComponent(this._service){
    data = new List<String>()
      ..addAll(this._service.data);

  }

  addServiceData(){
    data.addAll(this._service.getMoreData());
  }

}