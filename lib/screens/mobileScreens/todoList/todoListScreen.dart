
import 'package:fakarny_app/reuseables/buttons.dart';
import 'package:fakarny_app/reuseables/popUp.dart';
import 'package:flutter/material.dart';

class TodoListScreen extends StatefulWidget {
  const TodoListScreen({Key? key}) : super(key: key);

  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('your schedule'),

      ),
        body: SafeArea(
          child: Column(
          children: [
            Container(
              height: 80,
              margin: EdgeInsets.symmetric(horizontal: 25,vertical: 10),
    //           child:Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               Expanded(child: Card(
    //
    //                   child: Center(child: Text("Doctor's appointments")))
    //                 ,),  Expanded(child: Card(
    //
    //                   child: Center(child: Text("Tests appointments")))
    //                 ,),
    // ],
    //           ),
              child: textMaterialBtn(buttonTextName: '+ Add New Appointment', textBtnFunc: (){}, containerMargin: 5,defaultColor: true),
            )
          ],
    ),
        ),
      );
  }
}
