
import 'package:fakarny_app/reuseables/categoriesList.dart';
import 'package:fakarny_app/reuseables/expansionList.dart';
import 'package:flutter/material.dart';

class GroupMedicineScreen extends StatefulWidget {
  const GroupMedicineScreen({Key? key}) : super(key: key);

  @override
  _GroupMedicineScreenState createState() => _GroupMedicineScreenState();
}

class _GroupMedicineScreenState extends State<GroupMedicineScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          categoriesList(
            onPressed: () {},
            addBtnTitle: 'Add new medicine',
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.separated(
                scrollDirection: Axis.vertical,
                shrinkWrap: false,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return medicineCard(
                      context: context, wantedText: '', wantedText1: '');
                }, separatorBuilder: (BuildContext context, int index) => const Divider() ,),
          )
        ],
      ),
    );
  }
}
