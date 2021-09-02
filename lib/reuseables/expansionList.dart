import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'buttons.dart';

Widget homePageExpansionListContainer({
  required String titleText,
  required context,
  required String subtext1,
  required String subtext2,
  required String info1,
  required String info2,
  required bool isFirstCont,
  required textButtonFunc,
}) {
  return Card(
    elevation: 8,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    child: ExpansionTile(
      title: Text('$titleText', style: TextStyle(fontSize: 26)),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 2),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 160,
                  child: RichText(
                      overflow: isFirstCont == true
                          ? TextOverflow.ellipsis
                          : TextOverflow.visible,
                      text: TextSpan(
                          children: <TextSpan>[
                            TextSpan(
                              text: '$subtext1 ',
                              style: TextStyle(
                                  fontWeight: isFirstCont == true
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                  fontSize: 18),
                            ),
                          ],
                          style: Theme.of(context).textTheme.bodyText1)),
                ),
                Text("$info1",
                    style: isFirstCont == true
                        ? Theme.of(context).textTheme.headline6
                        : Theme.of(context).textTheme.headline3),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 160,
                  child: RichText(
                      overflow: isFirstCont == true
                          ? TextOverflow.ellipsis
                          : TextOverflow.visible,
                      text: TextSpan(
                          text: '',
                          children: <TextSpan>[
                            TextSpan(
                                text: '$subtext2 ',
                                style: TextStyle(
                                    fontWeight: isFirstCont == true
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                    fontSize: 18)),
                          ],
                          style: Theme.of(context).textTheme.bodyText1)),
                ),
                Text(
                  "$info2",
                  style: isFirstCont == true
                      ? Theme.of(context).textTheme.headline6
                      : Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ]),
        ),
        textMaterialBtn(
            buttonTextName: "more info",
            textBtnFunc: textButtonFunc,
            containerMargin: 2,
            containerAlignment: AlignmentDirectional.bottomEnd)
      ],
    ),
  );
}

Widget medicineCard(
    {required wantedText, required wantedText1, required context}) {
  return Card(
    elevation: 8,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
    child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Insulin',
              style: Theme.of(context).textTheme.headline1,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'Dosage: ',
                      style: Theme.of(context).textTheme.bodyText1,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Duration:',
                        style: Theme.of(context).textTheme.bodyText1),
                    SizedBox(
                      height: 10,
                    ),
                    Text('How to use:',
                        style: Theme.of(context).textTheme.bodyText1),
                  ],
                ),
                SizedBox(
                  width: 9,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text('every day',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'englishFont')),
                    SizedBox(
                      height: 10,
                    ),
                    Text('forever',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'englishFont')),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: 80,
                        child: Text(
                          'a shot in the thig',
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 17,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'englishFont'),
                          maxLines: 1,
                        )),
                  ],
                ),
                Column(
                  children: [
                    Image(
                        width: 65,
                        image: AssetImage("assets/photos/googleLogIn.png")),
                    textMaterialBtn(
                        textBtnFunc: () {},
                        buttonTextName: 'more Info',
                        containerMargin: 1)
                  ],
                )
              ],
            )
          ],
        )),
  );
}

Widget accountExpansionList({
  required String contentName,
  required context,
  required String contentInfo,
  required String btnName,
  required Function? btnFunc,
  required bool? fontSizeSlider,
  required iconShape
}) {
  return ExpansionTile(
    childrenPadding: EdgeInsets.all(2),
    title: Row(
      children: [
Icon( iconShape),
        SizedBox(width: 7,),
        Text(contentName),
      ],
    ),
    children: [
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            if(fontSizeSlider == true)
              Slider(onChanged: (value){},value: 4, min: 0,max: 25,)
            else
                Text(contentInfo ,style: Theme.of(context).textTheme.bodyText1,),
              textMaterialBtn(buttonTextName: btnName, textBtnFunc: (){btnFunc!();}, containerMargin: 3)
              ],
        ),
      )
  ]
  );
}
