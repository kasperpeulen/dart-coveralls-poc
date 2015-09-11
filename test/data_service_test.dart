import 'package:guinness/guinness.dart';
import 'package:angular/angular.dart';
import 'package:angular/mock/module.dart';

import '../lib/data_service.dart';

main() {

  describe("DataService", () {

    beforeEach(() {
     setUpInjector();
     module((Module m) => m..bind(DataService));
    });
    afterEach(tearDownInjector);

    
    describe("data", () {

      it("should have the initial length of 3", () {
        inject((DataService dataService) {
          expect(dataService.data.length).toEqual(3);
        });
        
      });
      
    });

    describe("getMoreData", () {

      it("should have the initial length of 3", () {
        inject((DataService dataService) {
          expect(dataService.getMoreData().length).toEqual(3);
        });
        
      });
      
    });

    
  });

}




