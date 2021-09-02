import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';



  late Database _database;

  void createData() async{
    _database = await openDatabase(
        'medicineInfo.db',
        version: 1,
        onCreate: (_database,version){
          _database.execute('CREATE TABLE medicines (id INTEGER PRIMARY KEY,name TEXT , duration TEXT , numberOfPills INTEGER )').then((value) => print('table created'));
        },onOpen: (_database){
      print('opend');
    }

    );
    print(_database);
  }

  void insertDataBase(){
    _database.transaction((txn) {
      return   txn.rawInsert("INSERT INTO medicines (name , duration , numberOfPills , VALUES('shady','2 days',1)").then((value)=> print('inserted'));
    } );
  }







