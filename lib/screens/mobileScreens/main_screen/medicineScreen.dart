import 'package:fakarny_app/reuseables/categoriesList.dart';
import 'package:fakarny_app/reuseables/expansionList.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class MedicineScreen extends StatefulWidget {
  const MedicineScreen({Key? key}) : super(key: key);

  @override
  _MedicineScreenState createState() => _MedicineScreenState();
}

class _MedicineScreenState extends State<MedicineScreen> {
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

                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return medicineCard(
                      context: context, wantedText1: '', wantedText: '');
                }, separatorBuilder: (BuildContext context, int index) => const Divider(),),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
