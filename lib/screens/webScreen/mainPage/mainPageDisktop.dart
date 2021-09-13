import 'package:fakarny_app/components/side_menu.dart';
import 'package:fakarny_app/reuseables/popUp.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';
import 'medicinePage.dart';

class MainPageTablet extends StatefulWidget {
  const MainPageTablet({Key? key}) : super(key: key);
 
  @override
  _MainPageTabletState createState() => _MainPageTabletState();
}

class _MainPageTabletState extends State<MainPageTablet> {

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double containerHeight= 180;
    final _formKey = GlobalKey<FormState>();
    return Scaffold(
        appBar: screenSize.width < 1028 ? AppBar() : null,
        drawer: Drawer(child: tabletSideNavBar(context: context)),
        body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                screenSize.width > 1030
                ? Expanded(
                    flex: 1, child: desktopSideNavBar(context: context))
                : Container(
                    width: 0,
                  ),
                Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),

                    alignment: AlignmentDirectional.topStart,
                    child: Text(
                      'You took so far:',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                  //Rounded progress bar
                  Container(
                    width: 230,
                    height: 230,
                    child: SfRadialGauge(axes: <RadialAxis>[
                      RadialAxis(
                          minimum: 0,
                          maximum: 100,
                          showLabels: false,
                          showTicks: false,
                          axisLineStyle: AxisLineStyle(
                            thickness: 0.2,
                            cornerStyle: CornerStyle.bothCurve,
                            color: Color.fromARGB(30, 0, 169, 181),
                            thicknessUnit: GaugeSizeUnit.factor,
                          ),
                          pointers: <GaugePointer>[
                            RangePointer(
                              value: 30,
                              cornerStyle: CornerStyle.bothCurve,
                              width: 0.2,
                              sizeUnit: GaugeSizeUnit.factor,
                            )
                          ],
                          annotations: <GaugeAnnotation>[
                            GaugeAnnotation(
                                positionFactor: 0.1,
                                angle: 90,
                                widget: Text(
                                  30.toStringAsFixed(0) + ' / 100',
                                  style:
                                      Theme.of(context).textTheme.headline3,
                                ))
                          ])
                    ]),
                  ),
                  Container(
                      width: double.infinity,
                      height: 200,
                      child: ListView.separated(
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(
                          height: 20,
                        ),
                        itemBuilder: (BuildContext context, int index) {
                          return medicinePopUp(
                              context: context, formKey: _formKey);
                        },
                        shrinkWrap: true,
                        itemCount: 8,
                      )),
              ],
                  ),
                )),
                Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //you took so far title

                    Container(
                     // height: containerHeight,
                      width: 300,
                      margin: EdgeInsets.all(20),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Padding(
                              padding: EdgeInsets.all(12),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Column(
                                      children: [
                                        Text(
                                          'Next Medicine:',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline1,
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('Antinal'),
                                            Text('42 min')
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('Antinal'),
                                            Text('42 min')
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    //schedule
                    Container(
                     // height: containerHeight,
                      width: 300,
                      margin: EdgeInsets.all(20),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Padding(
                              padding: EdgeInsets.all(12),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Column(
                                      children: [
                                        Text(
                                          'Your schedule:',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline1,
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('Diabetus Lap'),
                                            Text('23/2/2021')
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('Dr hassan meeting'),
                                            Text('22/2/2021')
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    //next medicine
                    Container(
                     // height: containerHeight,
                      width: 300,
                      margin: EdgeInsets.all(20),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Padding(
                              padding: EdgeInsets.all(12),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Column(
                                      children: [
                                        Text(
                                          'Medicine status:',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline1,
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('Needs to re-buy:'),
                                            Text('12')
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('Edited/Deleted'),
                                            Text('4')
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                     // height: containerHeight,
                      width: 300,
                      margin: EdgeInsets.all(20),
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Padding(
                              padding: EdgeInsets.all(12),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.topLeft,
                                    child: Column(
                                      children: [
                                        Text(
                                          'Next Medicine:',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline1,
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('Antinal'),
                                            Text('42 min')
                                          ],
                                        ),
                                        SizedBox(
                                          height: 20,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('Antinal'),
                                            Text('42 min')
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                    //medicine status

                    // re-buy medicine

                    // next medicine

                    // schedules
                  ],
                ),
              ),
                )
              ])),
        ));
  }
}
