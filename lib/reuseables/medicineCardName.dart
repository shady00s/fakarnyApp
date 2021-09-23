import 'package:flutter/material.dart';

Widget medicineCardName ({required Map data}){
  return Card(
    child: InkWell(
      onTap: (){

      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListTile(
          title: Text(data["medicine_name"]),
          leading: Image(image: AssetImage('assets/photos/googleLogIn.png'),),
        ),
      ),
    ),
  );
}
