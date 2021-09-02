import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
            
            children: [
                  SizedBox(height: 35,),
                  Container(
                    alignment: AlignmentDirectional.centerStart,
                    child:  Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Hi,'),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Hi,'),
                ),

                ],
                  )

              ),
                
              
                TextFormField(

                ),
                SizedBox(
                  height: 30,
                ),
                TextFormField()
            ],),
        
    
    );
  }
}
