
import 'package:test/test.dart';
import 'package:angular/angular.dart';
import 'package:angular/mock/module.dart';

import 'package:coveralls/data_service.dart';


main() {


  group("DataService", () {

    setUp(() {
     setUpInjector();
     module((Module m) => m..bind(DataService));
    });
    tearDown(tearDownInjector);

    
    group("data", () {

      test("should have the initial length of 3", () {
        inject((DataService dataService) {
          expect(dataService.data.length, equals(3));
        });
        
      });
      
    });

    group("getMoreData", () {

      test("should have the initial length of 3", () {
        inject((DataService dataService) {
          expect(dataService.getMoreData().length, equals(3));
        });
        
      });


      test("should fail", () {
          expect(1, equals(2));
      }/*, skip: "Just for demo."*/);
      
    });

    
  });

}



