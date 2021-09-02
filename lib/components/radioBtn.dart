import 'package:flutter/material.dart';

class RadioBtn extends StatefulWidget {
  const RadioBtn({Key? key}) : super(key: key);

  @override
  _RadioBtnState createState() => _RadioBtnState();
}

class _RadioBtnState extends State<RadioBtn> {
  late int radioActive;
  @override
  void initState() {
    super.initState();
    radioActive = 0;
  }

  activeFunc(val) {
    setState(() {
      radioActive = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(children: [
        Radio(
          value: 1,
          groupValue: radioActive,
          activeColor: Colors.blue[600],
          onChanged: (val) {
            activeFunc(val);
          },
        ),
        SizedBox(
          width: 5,
        ),
        const Text('Male')
      ]),
      Row(children: [
        Radio(
          value: 2,
          groupValue: radioActive,
          activeColor: Colors.pink,
          onChanged: (val) {
            activeFunc(val);
          },
        ),
        SizedBox(
          width: 5,
        ),
        const Text('female')
      ]),
    ]);
  }
}
