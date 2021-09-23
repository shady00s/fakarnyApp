import 'package:flutter/material.dart';

Widget medicineCardName ({required String testName}){
  return Card(
    child: InkWell(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListTile(
          title: Text("$testName"),
          leading: Image(image: AssetImage('assets/photos/googleLogIn.png'),),
        ),
      ),
    ),
  );
}
