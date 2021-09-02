import 'package:flutter/material.dart';
class SettingsContainer extends StatefulWidget {
  const SettingsContainer({Key? key}) : super(key: key);

  @override
  _SettingsContainerState createState() => _SettingsContainerState();
}

class _SettingsContainerState extends State<SettingsContainer> {
  double widthContainer = 0;
  bool isOpened = true;
  @override
  Widget build(BuildContext context) {

    return Row(
      children: [
        TweenAnimationBuilder(
          child: IconButton(
            onPressed: () {
              setState(() {
                isOpened = !isOpened;
                widthContainer =
                    MediaQuery.of(context).size.width / 1.8;
              });
            },
            icon: isOpened == true
                ? Icon(Icons.settings)
                : Icon(Icons.close),
          ),
          duration: Duration(seconds: 2),
          tween: Tween<double>(begin: 0, end: 1),
          builder: (BuildContext context, double value, Widget? child) {
            print(value);
            return Opacity(
              opacity: value,
              child: Padding(
                padding: EdgeInsets.only(left: value * 4),
                child: child,
              ),
            );
          },
        ),
        AnimatedContainer(
            height: 40,
            duration: Duration(milliseconds: 300),
            width: isOpened ? 0 : widthContainer,
            child: FittedBox(
              fit: BoxFit.contain,
              child: Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('FontSize'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Dark Mode'),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}

