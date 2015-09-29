library main;

import 'package:angular2/angular2.dart';

import 'data_service.dart';

@Component(
    selector: 'main'
)
@View(
  templateUrl: 'main.html',
  directives: const [NgFor]
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