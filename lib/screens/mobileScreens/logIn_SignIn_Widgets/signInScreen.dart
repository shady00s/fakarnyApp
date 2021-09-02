import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({ Key? key }) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
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
                    child:const Text('Welcome,'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:const Text('Hi,'),
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
      ),
        
    
    );
  }
}