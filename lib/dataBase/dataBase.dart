
import 'package:fakarny_app/global_vars.dart';
import 'package:fakarny_app/screens/webScreen/mainPage/medicinePage.dart';
import 'package:sqflite/sqflite.dart';



 class DataBaseClass {

 Database?  database;
  void   openTheDataBase() async{
    database =  await openDatabase('medicine.db',version:1,onCreate: (Database database,int version) async{
            print(" Database created");
            /*
            Medicine database needed info
              0.MEDICINE TIME(TIME)
              1.medicine id(number)
              2.medicine name(string)
              3.main active component(String)
              4.how to use(string)
              5.duration (date)
              6.pills count(number)
              7.medicine picture(string to the photo path)
              8.number of medicines
              9.medicines taken
             10.needed to re-buy
             */
try{
  await database.execute('CREATE TABLE medicines (id INTEGER PRIMARY KEY, medicine_name STRING, main_active_component STRING, how_to_use STRING , duration STRING, pills_count INTEGER,medicine_pic STRING ,number_of_medicines STRING, number_re_buy_medicines INTEGER)').then((value) =>print("table added successfully!"));

}catch(e){
  print("There is error while creating the database    $e" );
}

      },onOpen: (database) async{

       await exportingData(database).then((value) {

            medicineMap = value;

        }
          );




     print(" Database opened");
      });
    }

  Future addingManually(
 {
   required String medicineName,
   required String mainActiveComponent,
   required String howToUse,
   required int pillsCount,
   required String medicinePic,

 })async{
if(database == null)  database = await openDatabase("medicine.db");
    await database!.transaction((txn)async {
      try{
        await txn.rawInsert('INSERT INTO medicines(medicine_name, main_active_component, how_to_use, pills_count, medicine_pic) VALUES("$medicineName","$mainActiveComponent","$howToUse","$pillsCount","$medicinePic")').then((value) => print("finally added the raw"));

      }catch(e) {
        print("Raw error is $e");
      }
    });

  }

Future <List<Map>> exportingData( database) async{
     return await  database.rawQuery("SELECT * FROM medicines") ;
 }

}

