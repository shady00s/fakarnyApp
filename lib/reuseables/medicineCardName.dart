import 'package:flutter/material.dart';

Widget medicineCardName(){
  return Card(
    child: InkWell(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListTile(
          title: Text("Insulin"),
          leading: Image(image: AssetImage('assets/photos/googleLogIn.png'),),
        ),
      ),
    ),
  );
}
