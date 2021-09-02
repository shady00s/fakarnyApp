import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget headTitle ({
  required titleText,
  required context,
   textStyleTheme
}){
  return Container(
      alignment: AlignmentDirectional.topStart,
      margin: EdgeInsets.all(15),
      child: Text(titleText ,style:textStyleTheme == null? Theme.of(context).textTheme.headline2:textStyleTheme,overflow: TextOverflow.ellipsis,),
  );
}