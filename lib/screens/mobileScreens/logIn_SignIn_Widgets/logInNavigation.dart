
import 'package:fakarny_app/screens/mobileScreens/logIn_SignIn_Widgets/signInScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'logInScreen.dart';


class AccountNavigation extends StatelessWidget {
  const AccountNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 2, 
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
          toolbarHeight: 110,
          backgroundColor: Colors.white,
          title:Container(
              width: 195,
            child: TabBar(
              
              tabs: [
              Tab(
              
                  child:  Container(
                      
                      child: Text('log in',style: TextStyle(color: Colors.black ,fontFamily: 'accountFont',fontSize: 17),)),
              ),
              
              Tab(
              
                child:    Text('sign up',style: TextStyle(color: Colors.black,fontFamily: 'accountFont' ,fontSize: 17),)),
       
      ],
      ),
          ),
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20
          ),
          child: CircleAvatar(
            radius: 12,
            backgroundColor: Colors.blue,
            foregroundColor: Colors.blue,
          ),
        ),
      ],
      ),
      body: TabBarView(children: [
        LogInScreen(),
        SignInScreen()
      ])
      )

    );
  }
}
