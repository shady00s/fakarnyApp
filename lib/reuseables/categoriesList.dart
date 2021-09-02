
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'buttons.dart';

Widget categoriesList(
    {required Function? onPressed, required String addBtnTitle}) {
  return Container(
    width: double.infinity,
    margin: EdgeInsets.all(20),
    child: Column(
      children: [
        borderBtn(
            buttonTextName: addBtnTitle,
            textFontSize: 21,
            textBtnFunc: () {},
            containerMargin: 8),
        Container(
          width: double.infinity,
          height: 50,
          child: Row(
            children: [
              Expanded(
                child: ListView.builder(
                    itemCount: 8,
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                          margin: EdgeInsets.all(10),
                          child: OutlinedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(20)))),
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Image(
                                    isAntiAlias: true,
                                    image: AssetImage(
                                        'assets/photos/icons/heart.png'),
                                    width: 20,
                                    fit: BoxFit.cover,

                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Heart',
                                    style:
                                        Theme.of(context).textTheme.bodyText1,
                                  ),
                                ],
                              )));
                    }),
              ),
            ],
          ),
        )
      ],
    ),
  );
}
