import 'package:fakarny_app/dataBase/dataBase.dart';
import 'package:fakarny_app/global_vars.dart';
import 'package:fakarny_app/reuseables/inputPopUp.dart';
//import 'package:fakarny_app/reuseables/medicineCardName.dart';
import 'package:fakarny_app/reuseables/popUp.dart';
import 'package:flutter/material.dart';

class MedicinePage extends StatefulWidget {
  const MedicinePage({Key? key}) : super(key: key);

  @override
  _MedicinePageState createState() => _MedicinePageState();
}

class _MedicinePageState extends State<MedicinePage> {
  final x = DataBaseClass();


  void test() {
     x.openTheDataBase();
  }
@override
  void initState() {
    super.initState();
    test();
  }

  @override
  Widget build(BuildContext context) {
    const medicineFont = TextStyle( fontFamily: 'englishFont',fontSize:19,fontWeight: FontWeight.w300,height: 2.1,color: Color.fromARGB(255,242, 247, 255));
    const titleFont = TextStyle( fontFamily: 'englishFont',fontSize:17,fontWeight: FontWeight.w100,height: 2.3,color: Color.fromARGB(255,199, 199, 199));
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Medicines'),
          ),
          body: Row(
      children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Container(
                    height: 60,
                    width: double.infinity,
                    child: InputPopUp(inputDataType: 'medicine', medicineName: 'Add New Medicine',)),
                Expanded(
                  flex: 1,
                    child: ListView.separated(
                       separatorBuilder: (BuildContext context, int index) => const Divider(),
                       itemCount:medicineMap.length,
                       itemBuilder: (BuildContext context, int index) {
                       return Card(
                         child: InkWell(
                           onTap: (){
                                  setState(() {
                                    medicineName = medicineMap[index]["medicine_name"];
                                    medicineActiveName = medicineMap[index]["main_active_component"];
                                    medicineDuration = medicineMap[index]["duration"];
                                    pillsCount = medicineMap[index]["pills_count"];
                                  });
                           },
                           child: Padding(
                             padding: const EdgeInsets.all(12.0),
                             child: ListTile(
                               title: Text(medicineMap[index]["medicine_name"]),
                               leading: Image(image: AssetImage('assets/photos/googleLogIn.png'),),
                             ),
                           ),
                         ),
                       );
                  },
                ))
              ],
            ),
          )),
          Expanded(
            flex: 2,
              child: Column(

                mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Insulin"),
              Container(
                alignment: AlignmentDirectional.topStart,
                  height: 300,
                margin: EdgeInsets.all(12),
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(flex:3,child: Image(image: AssetImage('assets/photos/googleLogIn.png'),width: 80,),),
                    Expanded(flex:1,child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      InkWell(
                        onTap: (){},
                        child: Image(image: AssetImage('assets/photos/googleLogIn.png'),width: 35,),
                      ),
                      SizedBox(height: 20,),
                      InkWell(
                        onTap: (){},
                        child: Image(image: AssetImage('assets/photos/googleLogIn.png'),width: 35,),
                      ),
                        SizedBox(height: 20,),
                      InkWell(
                        onTap: (){},
                        child: Image(image: AssetImage('assets/photos/googleLogIn.png'),width: 35,),
                      ),

                    ],))

                  ],
                )
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Text("Medical Name:",style: titleFont,),
                      Text("Main Active material name:",style: titleFont,),
                      Text("Duration:",style: titleFont,),
                      Text("Dosage:",style: titleFont,),
                      Text("How to Use? :",style: titleFont,),
                      Text("remaining shot",style: titleFont,),

                    ],
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("$medicineName",style: medicineFont,),
                      Text("$medicineActiveName",style: medicineFont,),
                      Text("$medicineDuration",style: medicineFont,),
                      Text("1 shot before meal",style: medicineFont,),
                      Text("one shot in the thig",style: medicineFont,),
                      Text("$pillsCount",style: medicineFont,),
                    ],
                  )
                ],
              ),
                  SizedBox(height: 30,),
              Row(
                children: [
                  InputScreen(),

                ],
              ),
            ],
          ))
      ],
    ),
        ));
  }
}
