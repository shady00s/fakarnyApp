
import 'package:fakarny_app/components/rounded_loading_indecator.dart';
import 'package:fakarny_app/reuseables/expansionList.dart';
import 'package:fakarny_app/reuseables/headTitle.dart';
import 'package:fakarny_app/screens/mobileScreens/todoList/todoListScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double widthContainer = 0;
  bool isOpened = true;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return ListView(children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Column(children: [
          //settings button
          Row(
            children: [
              TweenAnimationBuilder(
                child: IconButton(
                  onPressed: () {

                    setState(() {
                      isOpened = !isOpened;
                      widthContainer = MediaQuery.of(context).size.width/1.8;
                    });
                  },
                  icon: isOpened ==true?Icon(Icons.settings):Icon(Icons.close),
                ),
                duration: Duration(seconds: 2),
                tween: Tween<double>(begin: 0, end: 1),
                builder: (BuildContext context, double value, Widget? child) {
                  print(value);
                  return Opacity(
                    opacity: value,
                    child: Padding(
                      padding: EdgeInsets.only(left: value*4),
                      child: child,
                    ),
                  );
                },
              ),
              AnimatedContainer(
                height: 40,
                  duration: Duration(milliseconds: 300),
                  width: isOpened ? 0  : widthContainer,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text('FontSize'),
                        ),
                        TextButton(
                          onPressed: () {},
                          child: Text('Dark Mode'),
                        ),
                      ],
                    ),
                  )),
            ],
          ),

          //name and date container
          Container(
            height: 190,

            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0)),
              color: Color.fromARGB(255, 11, 64, 156),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      child: Text(
                        'Welcome Mr safwat',
                        style: TextStyle(
                            color: Color.fromARGB(255, 242, 247, 255),
                            fontSize: 28,
                            fontFamily: 'englishFont'),
                      )),

                  // child: headTitle(
                  //     titleText: "Welcome Mr Safwat kamal" ,
                  //     context: context)),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.access_time),
                              SizedBox(
                                width: 10,
                              ),
                              Text('12:05 Am'),
                            ],
                          ),
                        ),
                        Container(
                          child: Row(
                            children: [
                              Icon(Icons.calendar_today),
                              SizedBox(
                                width: 10,
                              ),
                              Text('wed , 12 ,march ,2020')
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          //Dosage time container
          // what you took so far container
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 8,
            child: Column(
              children: [
                //You took title
                Container(
                  alignment: AlignmentDirectional.topStart,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FittedBox(
                      fit: BoxFit.fitWidth,
                      child: headTitle(
                          titleText: "You took so far:",
                          context: context,
                          textStyleTheme:
                              Theme.of(context).textTheme.headline1),
                    ),
                  ),
                ),
                // medicine you took
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: screenSize.height / 8,
                      width: screenSize.width >= 260
                          ? screenSize.width * .6
                          : screenSize.width / 2,
                      child: GridView.count(
                          childAspectRatio: MediaQuery.of(context).size.width /
                              (MediaQuery.of(context).size.height / 12.5),
                          crossAxisCount: 1,
                          children: List.generate(
                            6,
                            (index) => Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 25, vertical: 2),
                              child: Text('breakfast medicines',
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context).textTheme.bodyText1),
                            ),
                          )),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: roundedLoadingIdenticator(percentageValue: 75)),
                  ],
                ),
                // see more button
                Container(
                  margin: EdgeInsets.symmetric(vertical: 1, horizontal: 20),
                  alignment: AlignmentDirectional.topEnd,
                  child: TextButton(
                    onPressed: () {},
                    child: Text('see more'),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 50,
          ),
          homePageExpansionListContainer(
              titleText: 'Dosage time:',
              context: context,
              subtext1: 'Antinal',
              subtext2: 'gfdgfgfdsgg',
              info1: '40 min',
              info2: '1h : 20 min',
              isFirstCont: true,
              textButtonFunc: () {}),
          homePageExpansionListContainer(
              titleText: 'Medicine status:',
              context: context,
              subtext1: 'Medicines needs to re-buy',
              subtext2: 'Medicines deleted/ ended',
              info1: '20',
              info2: '10',
              isFirstCont: false,
              textButtonFunc: () {}),

          homePageExpansionListContainer(
              titleText: 'Your Schedule:',
              context: context,
              subtext1: 'Dr/ osama ahmed',
              subtext2: 'sugar test ',
              info1: 'monday',
              info2: '12:05pm',
              isFirstCont: false,
              textButtonFunc: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TodoListScreen()));
              })

          // expansion example
        ]),
      ),
    ]);
  }
}
