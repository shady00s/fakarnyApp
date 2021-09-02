
import 'package:fakarny_app/reuseables/expansionList.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatefulWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  _AccountScreenState createState() => _AccountScreenState();
}

bool isSwitched = false;

class _AccountScreenState extends State<AccountScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Container(
                height: 180,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 8,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Stack(
                      children: [
                        Positioned(
                            left: 300,
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.camera_alt_outlined),
                            )),
                        Center(
                          child: Row(
                            children: [
                              CircleAvatar(
                                foregroundColor: Colors.white,
                                backgroundColor: Colors.white,
                                backgroundImage:
                                    AssetImage('assets/photos/icons/user.png'),
                                radius: 45,
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                'Safwat Kamal',
                                style: Theme.of(context).textTheme.headline1,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              accountExpansionList(btnFunc: (){}, btnName: 'change Email', contentInfo: 'safwatKamal23@gmail.com', contentName: 'Email', context: context, fontSizeSlider: false ,iconShape:Icons.email_outlined),
              accountExpansionList(btnFunc: (){}, btnName: 'Notification settings', contentInfo: ' active', contentName: 'Notifications', context: context,fontSizeSlider: false,iconShape:Icons.notifications_active_rounded),
              accountExpansionList(btnFunc: (){}, btnName: 'change language', contentInfo: 'English', contentName: 'Language', context: context,fontSizeSlider: false,iconShape:Icons.language_outlined),
              accountExpansionList(btnFunc: (){}, btnName: 'confirm', contentInfo: '', contentName: 'Font Size', context: context,fontSizeSlider: true,iconShape: Icons.font_download_outlined),
              ExpansionTile(title:
              Row(children: [
                Icon(Icons.dark_mode),
                SizedBox(width: 5,),
                Text('Dark mode')],),children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                        Text(isSwitched == true ? " On": "Off"),
                    Switch(value: isSwitched, onChanged: (value){setState(() {
                      isSwitched = value;
                    });})
                  ],)],)
            ],
          ),
        ),
      ),
    );
  }
}
