
import 'package:fakarny_app/reuseables/textInput.dart';
import 'package:flutter/material.dart';
import 'buttons.dart';

Widget popUpScreen ({required context}){
  return textMaterialBtn(buttonTextName: "More Info",context: context, textBtnFunc: (){
const medicineFont = TextStyle( fontFamily: 'englishFont',fontSize:19,fontWeight: FontWeight.w300,height: 2.1,color: Color.fromARGB(255,242, 247, 255));
const titleFont = TextStyle( fontFamily: 'englishFont',fontSize:17,fontWeight: FontWeight.w100,height: 2.3,color: Color.fromARGB(255,199, 199, 199));
    showDialog(context: context, builder: (BuildContext context){
      return AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title:Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("insuline",style: Theme.of(context).textTheme.headline3,),
            IconButton(onPressed: (){
              Navigator.pop(context);
            },icon:Icon(Icons.close))],) ,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [


            Image(image:AssetImage('assets/photos/googleLogIn.png'),width: 90,alignment: Alignment.center,),

SizedBox(height: 23,)
            ,Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text("Medical Name:",style: titleFont,),
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
                    Text("Insulin",style: medicineFont,),
                    Text("lifetime",style: medicineFont,),
                    Text("1 shot before meal",style: medicineFont,),
                    Text("one shot in the thig",style: medicineFont,),
                    Text("remaining shot",style: medicineFont,),
                  ],
                )
              ],
            ),
              ],
            ),

        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
            textMaterialBtn(buttonTextName: "More Info", textBtnFunc: (){
              Navigator.pop(context);
            }, containerMargin: 2),
            textMaterialBtn(buttonTextName: "Edit", textBtnFunc: (){
              Navigator.pop(context);
            }, containerMargin: 2),
          ],)

        ],
      );
    });
  }, containerMargin: 2 ,containerAlignment: Alignment.bottomRight);
}

Widget inputScreen ({required context ,required formKey}){

  return textMaterialBtn(buttonTextName: "", textBtnFunc: (){
    return showDialog(

        context: context,

        builder: (BuildContext context){

      return AlertDialog(
          title: Text("Edit",style: Theme.of(context).textTheme.headline3,),

            content:Form(
              key: formKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  textInput(labelText: "Medicine Name",

                      validate: (value){
                    if(value == null || value.isEmpty){
                      return "Please enter the value.";
            }
                    return " gada3";
                  }),
                  MaterialButton(onPressed: (){
                    if(formKey.currentState!.validate()){
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')));
                    }
                  })
              ],)
            )


      );
    });
}, containerMargin: 2);
}

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {


    return textMaterialBtn(buttonTextName: "", textBtnFunc: (){
      return showDialog(
          context: context,

          builder: (BuildContext context){

            return AlertDialog(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Edit",style: Theme.of(context).textTheme.headline3,),
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(Icons.close))
                  ],
                ),

                content:Form(
                    key: _formKey,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        textInput(labelText: 'Name:',validate: (value){
                              if(value == null || value.isEmpty){
                              return "Please enter the value.";
                              }
                              return null;

                        }),textInput(labelText: 'Duration:',validate: (value){
                              if(value == null || value.isEmpty){
                              return "Please enter the value.";
                              }
                              return null;

                        }),textInput(labelText: 'Dosage:',validate: (value){
                              if(value == null || value.isEmpty){
                              return "Please enter the value.";
                              }
                              return null;

                        }),textInput(labelText: 'How to use:',validate: (value){
                              if(value == null || value.isEmpty){
                              return "Please enter the value.";
                              }
                              return null;

                        }),
                        ElevatedButton(onPressed: (){
                          if(_formKey.currentState!.validate()){
                            print(_formKey.currentState!.validate());
                            ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Processing Data')));
                          }
                        }, child:const Text('Submit'),)
                      ],)
                )


            );
          });
    }, containerMargin: 2);;
  }
}
