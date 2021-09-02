import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'account.dart';
import 'groupMedicineScreen.dart';
import 'homeScreen.dart';
import 'medicineScreen.dart';

class HomePageNavigation extends StatefulWidget {
  const HomePageNavigation({Key? key}) : super(key: key);
  @override
  _HomePageNavigationState createState() => _HomePageNavigationState();
}
class _HomePageNavigationState extends State<HomePageNavigation> {
  static const   iconColors = Colors.black;
  static const unselectedColor = Color.fromARGB(240, 80, 80, 80);
  int screenIndex = 0;
  List<Widget> screens=[
    HomeScreen(),
    MedicineScreen(),
    GroupMedicineScreen(),
    AccountScreen(),
  ];
  PageController pageCont = PageController(initialPage: 0);

  var isselected = false;

@override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: PageView(
          children: screens,
          scrollDirection: Axis.horizontal,
          onPageChanged: (index){
            setState(() {
              screenIndex = index;
            });
          },
            controller: pageCont,

        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: iconColors,
        unselectedItemColor: unselectedColor,

        currentIndex: screenIndex ,
        onTap: (index){
          setState(() {
            isselected = true;
            pageCont.animateToPage(index, duration: Duration(microseconds: 700), curve: Curves.easeIn);
          });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'medicines',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Groups',
          ),

          BottomNavigationBarItem(
              icon:  Icon(Icons.account_circle_outlined,color: iconColors,),
              label: 'account'
          )

        ],
      ),
    );
  }
}
