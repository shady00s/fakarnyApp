import 'dart:io';


import 'package:fakarny_app/screens/mobileScreens/logIn_SignIn_Widgets/chooseLangMobile.dart';
import 'package:fakarny_app/screens/webScreen/mainPage/mainPageDisktop.dart';
import 'package:flutter/material.dart';
void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
        debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.black54
        ),
        textTheme:   TextTheme(
          //for titles ex: You took so far
            headline1: TextStyle( fontSize: 24, fontFamily: 'englishFont',fontWeight: FontWeight.w600,color: Color.fromARGB(255,242, 247, 255)),
            // for Name  ex: Welcome Mr
            headline2: TextStyle( fontSize: 20, fontFamily: 'englishFont',fontWeight: FontWeight.w600,color: Color.fromARGB(255,242, 247, 255),),
            // for red numbers
            headline3: TextStyle( fontSize: 35, fontFamily: 'englishFont',fontWeight: FontWeight.w600 ,color: Color.fromARGB(255,242, 247, 255)),
            headline4: TextStyle( fontSize: 35, fontFamily: 'englishFont',fontWeight: FontWeight.w600 ,color: Color.fromARGB(255,242, 247, 255)),
            headline5: TextStyle( fontSize: 16, fontFamily: 'englishFont',fontWeight: FontWeight.w600 ,color: Color.fromARGB(255,242, 247, 255)),
            headline6: TextStyle( fontSize: 15, fontFamily: 'englishFont',fontWeight: FontWeight.w600 ,color:Color.fromARGB(255,242, 247, 255)),
            bodyText1: TextStyle(fontSize: 15 , fontFamily: 'englishFont',color: Colors.grey[300] , )
        ),
        brightness: Brightness.dark,
      ),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 2,
          iconTheme: IconThemeData(color: Colors.black),
         titleTextStyle: TextStyle(
           fontSize: 25,
           color: Colors.black
          )
        ),
        textTheme:   TextTheme(
          //for titles ex: You took so far
         headline1: TextStyle( fontSize: 24, fontFamily: 'englishFont',fontWeight: FontWeight.w600,color: Colors.black),
         // for Name  ex: Welcome Mr
         headline2: TextStyle( fontSize: 20, fontFamily: 'englishFont',fontWeight: FontWeight.w600,color: Colors.black,),
         // for red numbers
         headline3: TextStyle( fontSize: 35, fontFamily: 'englishFont',fontWeight: FontWeight.w600 ,color: Colors.red),
         headline4: TextStyle( fontSize: 35, fontFamily: 'englishFont',fontWeight: FontWeight.w600 ,color: Colors.yellow[600]),
         headline5: TextStyle( fontSize: 16, fontFamily: 'englishFont',fontWeight: FontWeight.w600 ,color: Colors.black),
         headline6: TextStyle( fontSize: 15, fontFamily: 'englishFont',fontWeight: FontWeight.w600 ,color:Colors.green[600]),
         bodyText1: TextStyle(fontSize: 15 , fontFamily: 'englishFont',color: Colors.grey[600] , )
        )
      ),
      themeMode: ThemeMode.dark,
      home: LayoutBuilder(builder:(BuildContext context , BoxConstraints constraints){
        if(constraints.minWidth.toInt() <= 500)

          return ChooseLang();
        return MainPageTablet();
      })
    );
      
  }
  
}
