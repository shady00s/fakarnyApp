import 'package:sqflite/sqflite.dart';



void userAccInfo() async {
  Database database = await openDatabase('newDatabase.db', version: 1,
      onCreate: ((database, version) {
    database
        .execute(
            'CREATE TABLE task (id INTEGER PRIMARY KEY,userName TEXT, userLastName TEXT,userEmail TEXT , userPass TEXT)')
        .then((value) => print('table done'))
        .catchError((err) => print('${err.toString()}'));
  }), onOpen: (database) {
    print('opend');
  });

  await database.transaction((txn) async {
    await txn
        .execute('INSERT INTO task (userName, userLastName ,userEmail, userPass ) VALUES ("shady","kamal","ssk@gmail.com","123qweasd")')
        .then((value) => print('raw done'))
        .catchError((err) => print('$err'));
  });


}
