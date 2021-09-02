import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget logInLangBtn({
  required String buttonName,
  required btnFunction,
}) {
  const subTitleFontStyle =
      TextStyle(fontSize: 22, color: Colors.white, fontFamily: 'arabicFont');
  return (Container(
      height: 45,
      width: 165,
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: (Colors.grey[400])!,
              offset: Offset(0.0, 3.0), //(x,y)
              blurRadius: 15.0,
            ),
          ],
          color: const Color.fromRGBO(21, 168, 159, 0.8),
          borderRadius: BorderRadius.circular(20)),
      child: MaterialButton(
        onPressed: btnFunction,
        child: Text('$buttonName',
            textAlign: TextAlign.justify, style: subTitleFontStyle),
      )));
}

Widget textMaterialBtn(
    {required String buttonTextName,
    required Function? textBtnFunc,
    required double? containerMargin,
       context,
    defaultColor,
    containerAlignment}) {
  return Container(
    alignment: containerAlignment == null
        ? AlignmentDirectional.center
        : containerAlignment,
    margin: EdgeInsets.all(containerMargin!),
    child: Padding(
      padding: EdgeInsets.all(5),
      child: MaterialButton(
        color: Colors.white12,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: () {
          textBtnFunc!();
        },
        child: Text(buttonTextName,
            style: TextStyle(
                color: defaultColor == true ? Colors.black : Colors.white )),
      ),
    ),
  );
}

Widget borderBtn(
    {required String buttonTextName,
    required double textFontSize,
    required Function? textBtnFunc,
    required double? containerMargin,
    defaultColor,
    containerAlignment})  {
  return Container(
    child: Padding(
      padding: EdgeInsets.all(8.0),
      child: OutlinedButton(
        onPressed: () {
          textBtnFunc!();
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            buttonTextName,
            style: TextStyle(fontSize: textFontSize ,color: Colors.black),
          ),
        ),
        style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)))),
      ),
    ),
  );
}

Widget mainBtn1({required String mainBtnText, required Function? onPressed}) {
  return Container(
    width: 80,
    alignment: AlignmentDirectional.centerStart,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(color: Colors.black26, spreadRadius: 2, blurRadius: 5)
        ],
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.white30)),
    child: MaterialButton(
      height: 50,
      padding: EdgeInsets.zero,
      onPressed: () {
        onPressed!();
      },
      child: Text('submit'),
    ),
  );
}
