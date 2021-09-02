import 'dart:convert';
import 'package:fakarny_app/languages/arabicLan.dart';
import 'package:fakarny_app/languages/englishLan.dart';
import 'package:fakarny_app/reuseables/buttons.dart';
import 'package:fakarny_app/screens/mobileScreens/main_screen/home_page_navigation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class IllustrationApp extends StatefulWidget {
  bool isArabic;
  IllustrationApp({
    required this.isArabic,
  });

  @override
  _IllustrationAppState createState() => _IllustrationAppState();
}

class _IllustrationAppState extends State<IllustrationApp> {
  List _illustrationContainer = [];

  Future<void> getDataFromJson() async {
    final String response =
        await rootBundle.loadString('assets/json/illustratorContainer.json');
    final data = await json.decode(response);
    setState(() {
      _illustrationContainer = data["illustrationPage"];
    });
  }

  @override
  Widget build(BuildContext context) {
    var y = arabicLangGreetingsData.values;
    var inputHead;

    var x = englishLangGreetingsData.values;
    var textInput = widget.isArabic == false ? x : y;
    _illustrationContainer.length == 0
        ? getDataFromJson()
        : _illustrationContainer;

    var size1 = MediaQuery.of(context).size;
    var fontsSize1 = size1.width <= 385 ? size1.width / 15 : size1.width / 25;
    var fontsSize2 = size1.width <= 385 ? size1.width / 23.5 : size1.width / 36;
    var titleStyle = TextStyle(
        fontFamily: 'accountFont',
        fontSize: fontsSize1,
        fontWeight: FontWeight.bold);
    var textStyle = TextStyle(
        fontFamily: 'accountFont',
        fontSize: fontsSize2,
        color: Colors.grey[600]!,
        height: 1.5);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            //skip button
            SizedBox(
              height: 15,
            ),
            Container(
              alignment: AlignmentDirectional.centerEnd,
              child: textMaterialBtn(
                buttonTextName: "skip",
                containerAlignment: AlignmentDirectional.bottomEnd,
                textBtnFunc: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomePageNavigation()));
                },
                containerMargin: 5,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            //the Image illustrator Container
            Expanded(
              flex: 3,
              child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _illustrationContainer.length,
                  itemBuilder: (context, index) {
                    return Card(
                      elevation:0,
                        child: Center(
                          child: Column(children: [
                      Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          width: double.infinity,
                          height: 270,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                            boxShadow:[ BoxShadow(
                             color: (Colors.grey[200]!),
                              spreadRadius: 2,
                              blurRadius: 15,
                              offset: Offset(0, 3),
                            )]
                          ),
                          child: Image(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                  _illustrationContainer[index]["ImageUrl"])),
                      ),SizedBox(height: 20),
                      Text(_illustrationContainer[index]['title'],style:
                      TextStyle(fontWeight: FontWeight.bold,fontSize: 27,fontFamily: 'englishFont'),
                      ),
                      SizedBox(height: 20),
                      Container(
                            width: MediaQuery.of(context).size.width/1.5,
                            child: Text(_illustrationContainer[index]['subText'],style: TextStyle(fontSize: 15 , fontFamily: 'englishFont',color: Colors.grey[600],height: 1.4))),
                      SizedBox(
                          width: 50,
                      )
                    ]),
                        ));
                  }),
            ),

            //the indicators

            Expanded(
              //the page identifier
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.grey[400],
                      ),
                      SizedBox(width: 12),
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.grey[400],
                      ),
                      SizedBox(width: 12),
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.grey[400],
                      ),
                    ],
                  ),
                  //NextButton
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    child: CircleAvatar(
                      radius: 34,
                      child: MaterialButton(
                        height: double.infinity,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(180)),
                        onPressed: () {},
                        child: Center(
                            child: Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 35.0,
                        )),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
