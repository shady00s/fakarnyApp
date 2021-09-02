
import 'package:fakarny_app/components/rounded_loading_indecator.dart';
import 'package:fakarny_app/reuseables/headTitle.dart';
import 'package:fakarny_app/reuseables/popUp.dart';
import 'package:fakarny_app/reuseables/settingsContainer.dart';
import 'package:flutter/material.dart';

class MainPageTablet extends StatefulWidget {
  const MainPageTablet({Key? key}) : super(key: key);

  @override
  _MainPageTabletState createState() => _MainPageTabletState();
}

class _MainPageTabletState extends State<MainPageTablet> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SettingsContainer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // Greetings
                        Container(
                          alignment: AlignmentDirectional.topStart,
                          width: 345,
                          height: 220,
                          child: Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20.0)),
                            color: Colors.green,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 5),
                                    child: Text(
                                      'Welcome Mr safwat',
                                      style: TextStyle(
                                          color: Color.fromARGB(
                                              255, 242, 247, 255),
                                          fontSize: 28,
                                          fontFamily: 'englishFont'),
                                    )),

                                // child: headTitle(
                                //     titleText: "Welcome Mr Safwat kamal" ,
                                //     context: context)),
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 15, vertical: 5),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
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

                        // Dosage
                        Container(
                          width: 330,
                          child: Card(
                            color: Colors.teal,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            elevation: 8,
                            child: Column(
                              children: [
                                //title
                                Container(
                                  alignment: AlignmentDirectional.topStart,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, top: 8.0),
                                    child: headTitle(
                                        titleText: "Dosage Time:",
                                        context: context,
                                        textStyleTheme: Theme.of(context)
                                            .textTheme
                                            .headline1),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 12.0, right: 12.0, bottom: 12.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Antinal',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                          Text('40 min',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline5),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Voltarine',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1),
                                          Text('1h : 20 min',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline6),
                                        ],
                                      ),
                                      popUpScreen(context: context)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        //status
                        Container(
                          width: 330,
                          child: Card(
                            color: Colors.amber[700],
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                //title
                                Container(
                                  alignment: AlignmentDirectional.topStart,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, top: 8.0),
                                    child: headTitle(
                                        titleText: "Medicine Status:",
                                        context: context,
                                        textStyleTheme: Theme.of(context)
                                            .textTheme
                                            .headline1),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 12.0, right: 12.0, bottom: 12.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Medicines needs to re-buy',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                          Text('10',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline3),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Medicine Deleted/Ended',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1),
                                          Text('7',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline4),
                                        ],
                                      ),
                                      popUpScreen(context: context)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        //you took so far
                        Container(
                          alignment: AlignmentDirectional.topStart,
                          width: 330,
                          child: Card(
                            color: Color.fromARGB(255, 11, 64, 156),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            elevation: 8,
                            child: Column(
                              children: [
                                //You took title
                                Container(
                                  alignment: AlignmentDirectional.topStart,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: headTitle(
                                        titleText: "You took so far:",
                                        context: context,
                                        textStyleTheme: Theme.of(context)
                                            .textTheme
                                            .headline1),
                                  ),
                                ),
                                // medicine you took
                                Container(
                                  height: 85,
                                  width: 300,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: ListView.separated(
                                          shrinkWrap: true,
                                          itemCount: 12,
                                          itemBuilder: (context, index) {
                                            return Text('BreakFast',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyText1);
                                          },
                                          separatorBuilder:
                                              (BuildContext context,
                                                      int index) =>
                                                  const Divider(),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      roundedLoadingIdenticator(
                                          percentageValue: 75)
                                    ],
                                  ),
                                ),

                                // see more button
                                popUpScreen(context: context)
                              ],
                            ),
                          ),
                        ),
                        //schedule
                        Container(
                          width: 330,
                          child: Card(
                            color: Colors.red[600],
                            elevation: 8,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            child: Column(
                              children: [
                                //title
                                Container(
                                  alignment: AlignmentDirectional.topStart,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, top: 8.0),
                                    child: headTitle(
                                        titleText: "Your Schedule:",
                                        context: context,
                                        textStyleTheme: Theme.of(context)
                                            .textTheme
                                            .headline1),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 12.0, right: 12.0, bottom: 12.0),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'Dr ahmed',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyText1,
                                          ),
                                          Text('Monday',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline3),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Diabetes',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyText1),
                                          Text('22/2',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .headline4),
                                        ],
                                      ),
                                      popUpScreen(context: context)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        //medicine container
                        Container(
                          width: 300,
                          height: 280,
                          child: Card(
                            color: Colors.deepPurple,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            elevation: 8,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TweenAnimationBuilder(
                                  tween: Tween<double>(begin: 0, end: 1),
                                  duration: Duration(milliseconds: 300),
                                  builder: (BuildContext context,
                                      double value, Widget? child) {
                                    return AnimatedOpacity(
                                      opacity: value,
                                      duration: Duration(milliseconds: 300),
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              flex:1,
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'Medicines',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline1,
                                                  ),
                                                  // const Image(filterQuality:FilterQuality.high,
                                                  //     width :80,image: AssetImage('assets/photos/icons/pillsIcon2.png'))
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              flex:2,
                                              child: Container(
                                                child: ListView.separated(
                                                  shrinkWrap: true,
                                                    separatorBuilder:
                                                        (context, index) =>
                                                            const Divider(),
                                                    itemCount: 8,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return InkWell(
                                                        onTap: (){},
                                                        child: Container(
                                                          child: Row(
                                                            children: [
                                                              CircleAvatar(
                                                                radius: 25,
                                                              backgroundColor:Colors.transparent ,
                                                              child: Image.asset('assets/photos/googleLogIn.png',fit: BoxFit.cover,),
                                                                 ),
                                                              SizedBox(width: 12,),
                                                              Text('antinal')
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    }),
                                              ),
                                            ),
                                            popUpScreen(context: context)                                          ],
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                          ),
                        ),
                        //group container
                        Container(
                          width: 300,
                          height: 300,
                          child: Card(
                            color: Colors.pink[400],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                            elevation: 8,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TweenAnimationBuilder(
                                  tween: Tween<double>(begin: 0, end: 1),
                                  duration: Duration(milliseconds: 300),
                                  builder: (BuildContext context,
                                      double value, Widget? child) {
                                    return AnimatedOpacity(
                                      opacity: value,
                                      duration: Duration(milliseconds: 300),
                                      child: Padding(
                                        padding: const EdgeInsets.all(12.0),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.start,
                                          children: [
                                            Expanded(
                                              flex:1,
                                              child: Row(
                                                children: [
                                                  Text(
                                                    'Medicine Groups',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .headline1,
                                                  ),
                                                  // const Image(filterQuality:FilterQuality.high,
                                                  //     width :80,image: AssetImage('assets/photos/icons/pillsIcon2.png'))
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              flex:2,
                                              child: Container(
                                                child: ListView.separated(
                                                    shrinkWrap: true,
                                                    separatorBuilder:
                                                        (context, index) =>
                                                    const Divider(),
                                                    itemCount: 8,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return InkWell(
                                                        onTap: (){},
                                                        child: Container(
                                                          child: Row(
                                                            children: [
                                                              CircleAvatar(
                                                                radius: 25,
                                                                backgroundColor:Colors.transparent ,
                                                                child: Image.asset('assets/photos/googleLogIn.png',fit: BoxFit.cover,),
                                                              ),
                                                              SizedBox(width: 12,),
                                                              Text('antinal')
                                                            ],
                                                          ),
                                                        ),
                                                      );
                                                    }),
                                              ),
                                            ),
                                            InputScreen()                              ],
                                        ),
                                      ),
                                    );
                                  }),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
