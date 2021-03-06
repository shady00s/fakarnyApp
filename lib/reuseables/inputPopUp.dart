import 'package:fakarny_app/components/camera.dart';
import 'package:fakarny_app/dataBase/dataBase.dart';
import 'package:fakarny_app/reuseables/buttons.dart';
import 'package:fakarny_app/reuseables/textInput.dart';
import 'package:flutter/material.dart';

class InputPopUp extends StatefulWidget {
  final String medicineName;
  final String inputDataType;
  const InputPopUp(
      {Key? key, required this.medicineName, required this.inputDataType})
      : super(key: key);

  @override
  _InputPopUpState createState() => _InputPopUpState();
}

class _InputPopUpState extends State<InputPopUp> {
  String get medicineName => this.medicineName;
  String get inputDataType => this.inputDataType;
  final _formKey = GlobalKey<FormState>();

  final x = DataBaseClass();
  void test(){
    x.openTheDataBase();
  }
  // the input controller
@override
  void initState() {
  test();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final TextEditingController medicineNameController =  TextEditingController();
    final TextEditingController materialNameController =  TextEditingController();
    final TextEditingController durationController =  TextEditingController();
    final TextEditingController howtouseController =  TextEditingController();
     final TextEditingController numberOfPillsController =   TextEditingController();
    // int  numberOfPillsValue = int.parse(numberOfPillsController.text,onError: (s)=> -1);
    final TextEditingController imagePathController =  TextEditingController();


    return borderBtn(
        buttonTextName: widget.medicineName,
        textBtnFunc: () {
          switch (widget.inputDataType) {
            case "medicine":
              {
                return showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'Add New Medicine',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline3,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          icon: Icon(Icons.close))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  textInput(
                                      labelText: "Medicine Name:",
                                      controller: medicineNameController,
                                      validate: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Please enter the Medicine Name.";
                                        }
                                        return null;
                                      }),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  textInput(
                                      labelText: "Affective material Name:",
                                      controller: materialNameController,
                                      validate: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Please enter the Affective material Name.";
                                        }
                                        return null;
                                      }),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  textInput(
                                      labelText: "Duration: ",
                                      controller: durationController,
                                      validate: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Please enter the value.";
                                        }
                                        return null;
                                      }),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  textInput(
                                      labelText: "How to use ?",
                                      controller: howtouseController,
                                      validate: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Please enter  How to use.";
                                        }
                                        return null;
                                      }),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  textInput(
                                      labelText: "Number of pills / shots:",
                                      type: TextInputType.number,

                                      controller: numberOfPillsController,
                                      validate: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Please enter the value.";
                                        }
                                        return null;
                                      }),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  Text("Image File"),

                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                          width:200,
                                          child: textInput(labelText: "photos",controller: imagePathController)),
                                    CameraClass()
                                    ],
                                  ),

                                  SizedBox(
                                    height: 30,
                                  ),
                                  textMaterialBtn(
                                      buttonTextName: "Submit",
                                      textBtnFunc: () {
                                        if (_formKey.currentState!.validate()) {
                                          x.addingManually(pillsCount: 2, medicinePic: imagePathController.text, mainActiveComponent: materialNameController.text, medicineName: medicineNameController.text, howToUse: howtouseController.text);
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(const SnackBar(
                                                  content:
                                                      Text('Processing Data')));
                                        };

                                        //testing the database

                                      },
                                      containerMargin: 5)
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    });
              }

            case "schedule":
              {
                return showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return   AlertDialog(
                        content: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'Add New Medicine',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline3,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          icon: Icon(Icons.close))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  textInput(
                                      labelText: "Medicine Name:",
                                      validate: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Please enter the Medicine Name.";
                                        }
                                        return null;
                                      }),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  textInput(
                                      labelText: "Affective material Name:",
                                      validate: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Please enter the Affective material Name.";
                                        }
                                        return null;
                                      }),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  textInput(
                                      labelText: "Duration: ",
                                      validate: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Please enter the value.";
                                        }
                                        return null;
                                      }),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  textInput(
                                      labelText: "How to use ?",
                                      validate: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Please enter  How to use.";
                                        }
                                        return null;
                                      }),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  textInput(
                                      labelText: "Number of pills / shots:",
                                      validate: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Please enter the value.";
                                        }
                                        return null;
                                      }),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  textMaterialBtn(
                                      buttonTextName: "Submit",
                                      textBtnFunc: () {
                                        if (_formKey.currentState!.validate()) {
                                          print(
                                              _formKey.currentState!.validate());
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(const SnackBar(
                                              content:
                                              Text('Processing Data')));
                                        }
                                      },
                                      containerMargin: 5)
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    });
              }

            case "Group":
              {
                return showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: SingleChildScrollView(
                          child: Padding(
                            padding: const EdgeInsets.all(13.0),
                            child: Form(
                              key: _formKey,
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        alignment: Alignment.topLeft,
                                        child: Text(
                                          'Add New Medicine',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline3,
                                        ),
                                      ),
                                      SizedBox(
                                        width: 60,
                                      ),
                                      IconButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          icon: Icon(Icons.close))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  textInput(
                                      labelText: "Medicine Name:",
                                      validate: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Please enter the Medicine Name.";
                                        }
                                        return null;
                                      }),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  textInput(
                                      labelText: "Affective material Name:",
                                      validate: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Please enter the Affective material Name.";
                                        }
                                        return null;
                                      }),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  textInput(
                                      labelText: "Duration: ",
                                      validate: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Please enter the value.";
                                        }
                                        return null;
                                      }),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  textInput(
                                      labelText: "How to use ?",
                                      validate: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Please enter  How to use.";
                                        }
                                        return null;
                                      }),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  textInput(
                                      labelText: "Number of pills / shots:",
                                      validate: (value) {
                                        if (value == null || value.isEmpty) {
                                          return "Please enter the value.";
                                        }
                                        return null;
                                      }),
                                  SizedBox(
                                    height: 30,
                                  ),
                                  textMaterialBtn(
                                      buttonTextName: "Submit",
                                      textBtnFunc: () {
                                        if (_formKey.currentState!.validate()) {
                                          print(
                                              _formKey.currentState!.validate());
                                          ScaffoldMessenger.of(context)
                                              .showSnackBar(const SnackBar(
                                              content:
                                              Text('Processing Data')));
                                        }
                                      },
                                      containerMargin: 5)
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    });
              }
            default:
              {
                return showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        content: Text("Not found"),
                      );
                    });
              }
          }
        },
        containerMargin: 5,
        textFontSize: 23);
  }
}
