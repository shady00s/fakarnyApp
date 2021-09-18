import 'package:fakarny_app/reuseables/buttons.dart';
import 'package:fakarny_app/reuseables/inputPopUp.dart';
import 'package:fakarny_app/reuseables/medicineCardName.dart';
import 'package:fakarny_app/reuseables/popUp.dart';
import 'package:flutter/material.dart';

class MedicineGroup extends StatefulWidget {
  const MedicineGroup({Key? key}) : super(key: key);

  @override
  _MedicineGroupState createState() => _MedicineGroupState();
}

class _MedicineGroupState extends State<MedicineGroup> {
  GlobalKey _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('medicine Groups'),
      ),
      body: SafeArea(
        child: Row(
          children: [
            Expanded(
                child: Column(
                  children: [
                    Container(

                      child:InputPopUp(medicineName: 'Add new medicine', inputDataType: 'medicine',)
                      ,
                    ),
                    Expanded(

                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: ListView.separated(separatorBuilder: (BuildContext context ,int index)=>const Divider(),itemBuilder: (BuildContext context,int index){
                          return medicineCardName();
                        },  itemCount: 12),
                      ),
                    ),
                  ],
                )),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                          Row(
                            mainAxisAlignment:MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 120,top: 30,bottom: 60),
                                child: Text("Insulin",style: Theme.of(context).textTheme.headline3,)
                              ),
                              borderBtn(buttonTextName: "Edit Group", textFontSize: 21, textBtnFunc: (){}, containerMargin: 5)
                            ],
                          ),
                    Container(
                      width: 350,
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 30,top: 20),
                            child: Text("Time ",style: Theme.of(context).textTheme.headline2,),

                          ),
                          Text("12:00 AM")
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 30),
                      child: Text("medicines",style: Theme.of(context).textTheme.headline2,),
                    ),
                    Container(
                      width:screenSize.width  > 600 ? 650 :double.infinity,
                      height: 320,
                      child: GridView.count(
                        childAspectRatio:  screenSize.width > 600 ? 1.5 :8/4,
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        children:List.generate(12, (index) => Container(
                          margin: EdgeInsets.all(10),
                          width: 250,

                          child: Card(
                            child: InkWell(
                              onTap: (){
                                informationPopUp(context);
                              },
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Image(image: AssetImage("assets/photos/googleLogIn.png" ),width: 90,),
                                    SizedBox(height: 10,),
                                    Text("Insulin",style: Theme.of(context).textTheme.headline2,)
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )), crossAxisCount: 2,)
                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
