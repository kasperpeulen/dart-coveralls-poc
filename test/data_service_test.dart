import 'package:angular2/test.dart';
import 'package:coveralls/data_service.dart';

main() {

  testSetup();

  
  //describe should be added in final release
   describe("DataService", () {

      beforeEachBindings(() => [
        DataService
      ]);

    
    describe("data", () {

      it("should have the initial length of 3", () {
        inject([DataService], (dataService) {
          expect(dataService.data.length).toEqual(3);
        });
      });
      
    });

    describe("getMoreData", () {

      it("should have the initial length of 3", () {
        inject([DataService], (dataService) {
          expect(dataService.getMoreData().length).toEqual(3);
        });
        
      });


      it("should fail", () {
          expect(1).toEqual(2);
      });
      
    });

    
  });

}



