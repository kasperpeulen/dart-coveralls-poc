library data_service;

import 'package:angular/angular.dart';

@Injectable()
class DataService{
  List<String> _data;

  get data => _data;

  DataService(){
    this._data = new List<String>()
      ..add('One')
      ..add('Two')
      ..add('Three');
  }

  List<String> getMoreData(){
    return new List<String>()
      ..add('Four')
      ..add('Five')
      ..add('Six');
  }

}