import 'package:flutter/material.dart';

Widget textInput(
    {required String labelText,
    controller,
      type,

      bool? noKeyBoard,
    Function? onTap,
    Function? onChange,
     final  validate,

    }) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        keyboardType: type,
          controller: controller,
          onTap: () {
            onTap!();
          },
          onChanged: (s) {
            onChange!(s);
          },
          validator: validate,

          decoration: InputDecoration(
              labelText: labelText,
              labelStyle: TextStyle(fontSize: 20),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12)))),
    ),
  );
}
