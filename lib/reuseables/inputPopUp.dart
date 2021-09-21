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

  @override
  Widget build(BuildContext context) {
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
                                  Text("Image File"),

                                  Row(
                                    children: [
                                      Container(
                                          width: 300,
                                          child: textInput(labelText: "photos")),
                                    
                                    ],
                                  ),

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
