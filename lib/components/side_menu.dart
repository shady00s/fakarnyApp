
import 'package:fakarny_app/screens/webScreen/mainPage/medicineGroup.dart';
import 'package:fakarny_app/screens/webScreen/mainPage/medicinePage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget desktopSideNavBar({
  required BuildContext context,
  required DateTime timedate

}){
  var minute = timedate.minute;
  var hour = timedate.hour;
  var month = timedate.weekday;
  var day = timedate.weekday;
  var hVal =  hour > 12 ?   hour - 12 : hour;
  var pmAm =  hour > 12 ?  "Am":"Pm";
  var minVal = minute < 12 ? "0" + minute.toString() : minute.toString();
  int x = 0 ;


  return SingleChildScrollView(
    child: Column(children: [
      //Greetings
      Container(
        margin: EdgeInsets.all(10),
        width: double.infinity,
        height: 220,
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)),
          color: Colors.green,
          child: InkWell(

            onTap:(){},
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
                            Text(hVal.toString() +" : "+ minVal + " "+pmAm),
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
      ),
      //Medicines
      Container(
        margin: EdgeInsets.all(10),
        width: double.infinity,
        height: 120,
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)),
          color: Color.fromARGB(255, 183, 172, 68),
          child: InkWell(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MedicinePage()));
            },
            child: Row(children: [
              SvgPicture.asset('assets/svg/medicineIcon.svg',width: 80,),
              SizedBox(width: 20,),
              Text("Medicines",style: Theme.of(context).textTheme.headline2,),

            ],),
          ),
        ),
      ),
      // Groups
      Container(
        margin: EdgeInsets.all(10),
        width: double.infinity,
        height: 120,
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)),
          color: Color.fromARGB(255, 65, 32, 169),
          child: InkWell(
            onTap:(){
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context)=>MedicineGroup()));
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(children: [
                SvgPicture.asset('assets/svg/medicineGroupss.svg',width: 80,),
                SizedBox(width: 20,),
                FittedBox(
                    child: Text("Medicines Groups",style: Theme.of(context).textTheme.headline2)),

              ],),
            ),
          ),
        ),
      ),
      // schedule
      Container(
        margin: EdgeInsets.all(10),
        width: double.infinity,
        height: 120,
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)),
          color: Colors.pink[400],
          child: InkWell(
            onTap:(){},
            child: Row(children: [
              Text("Schedule"),

            ],),
          ),
        ),
      ),
      // settings
      Container(
        margin: EdgeInsets.all(10),
        width: double.infinity,
        height: 120,
        child: Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0)),
          color: Colors.pink[400],
          child: InkWell(
            onTap:(){},
            child: Row(children: [
              Text("Settings"),

            ],),
          ),
        ),
      ),
    ],),
  );
}
Widget tabletSideNavBar({
  required context
}){
  double containerHeight = 70;
  return Column(children: [
    //Greetings
    Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      height: 220,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)),
        color: Colors.green,
        child: InkWell(

          onTap:(){},
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

              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: 15, vertical: 5),
                child: Column(
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
                    SizedBox(height: 10,),
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
    ),
    //Medicines
    Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      height: containerHeight,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)),
        color: Color.fromARGB(255, 183, 172, 68),
        child: InkWell(
          onTap:(){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>MedicinePage()));
          },
          child: Row(children: [
            SvgPicture.asset('assets/svg/medicineIcon.svg',width: 80,),
            SizedBox(width: 20,),
            Text("Medicines",style: Theme.of(context).textTheme.headline2,),

          ],),
        ),
      ),
    ),
    // Groups
    Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      height: containerHeight,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)),
        color: Color.fromARGB(255, 65, 32, 169),
        child: InkWell(
          onTap:(){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>MedicineGroup()));
          },
          child: Row(children: [
            SvgPicture.asset('assets/svg/medicineGroupss.svg',width: 70,),
            SizedBox(width: 10,),
            FittedBox(
                fit: BoxFit.scaleDown,
                child: Text("Medicines Groups",maxLines:1,style: Theme.of(context).textTheme.headline2)),

          ],),
        ),
      ),
    ),
    // schedule
    Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      height: containerHeight,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)),
        color: Colors.pink[400],
        child: InkWell(
          onTap:(){},
          child: Row(children: [
            Text("Schedule"),

          ],),
        ),
      ),
    ),
    // settings
    Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      height: containerHeight,
      child: Card(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)),
        color: Colors.pink[400],
        child: InkWell(
          onTap:(){},
          child: Row(children: [
            Text("Settings"),

          ],),
        ),
      ),
    ),
  ],);
}