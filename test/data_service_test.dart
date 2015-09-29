
import 'package:unittest/html_config.dart';
import 'package:angular2/angular2.dart';
import 'package:angular2/test_lib.dart';

import 'package:coveralls/data_service.dart';


main() {

  useHtmlConfiguration();
  //describe should be added in final release
  // describe("DataService", () {

      beforeEachBindings(() => [
        bind(DataService)
      ]);

    
  //   describe("data", () {

      it("should have the initial length of 3", () {
        inject([DataService], (dataService) {
          expect(dataService.data.length).toEqual(3);
        });
      });
      
  //   });

  //   describe("getMoreData", () {

      it("should have the initial length of 3", () {
        inject([DataService], (dataService) {
          expect(dataService.getMoreData().length).toEqual(3);
        });
        
      });


      xit("should fail", () {
          expect(1).toEqual(2);
      });
      
  //   });

    
  // });

}



