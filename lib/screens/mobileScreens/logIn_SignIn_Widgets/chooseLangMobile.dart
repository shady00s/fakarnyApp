
import 'package:fakarny_app/reuseables/buttons.dart';
import 'package:fakarny_app/screens/mobileScreens/illustrator_screen/illustratorScreen.dart';
import 'package:flutter/material.dart';

class ChooseLang extends StatelessWidget {
  const ChooseLang({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const TitleFontSize = TextStyle(fontSize: 32, fontWeight: FontWeight.w600 ,fontFamily: 'arabicFont');
    const subTitleFontStyle = TextStyle(fontSize: 20,color: Color.fromARGB(255,80, 80, 80) ,fontFamily: 'arabicFont');
    const subTitleFontStyleEnglish = TextStyle(fontSize: 18,color: Color.fromARGB(255,80, 80, 80) ,fontFamily: 'accountFont');
    return  Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 14, horizontal: 30),
                    child: Container(
                        alignment: AlignmentDirectional.topEnd,
                        child: Text(
                          ',مرحبا',
                          style: TitleFontSize,
                        )),
                  ),
                  const Text('.اهلا بك في برنامج فكرني ',style: subTitleFontStyle,),
                  SizedBox(
                    height: 10,
                  ),
                  const Text('للاستمرار باللغة العربية ',style: subTitleFontStyle),
                  SizedBox(
                    height: 20,
                  ),
                  logInLangBtn(buttonName: 'العربية', btnFunction:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>IllustrationApp(isArabic: true)));
                  }),
                ],
              )),
              Expanded(
                  child: Column(
                children: [
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 14, horizontal: 30),
                      child: Container(
                          alignment: AlignmentDirectional.topStart,
                          child: Text(
                            'Hello,',
                            style: TitleFontSize,
                          ))),
                  const Text('Welcome in fakarny app.',style:subTitleFontStyleEnglish),
                  SizedBox(
                    height: 20,
                  ),
                  const Text('To continue with English.',style:subTitleFontStyleEnglish),
                  SizedBox(
                    height: 20,
                  ),
                  logInLangBtn(buttonName: 'English', btnFunction:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>IllustrationApp(isArabic: false)));

                  }),
                ],
              ))
            ],
          ),
        );
  }
}
