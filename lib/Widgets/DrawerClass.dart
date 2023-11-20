import 'package:airbnb_clone/Imports/ImportPackages.dart';
import 'package:airbnb_clone/Widgets/FilterClass.dart';
class DrawerClass extends StatefulWidget {
  @override
  State<DrawerClass> createState() => _DrawerClassState();
}

class _DrawerClassState extends State<DrawerClass> {
  SfRangeValues _values = SfRangeValues(3000.0, 10000.0);
  TextEditingController textEditingController1 = TextEditingController();
  TextEditingController textEditingController2 = TextEditingController();
  DateTime dateTime = DateTime.now();

  List<CardDesign> temp = [];

  @override
  Widget build(BuildContext context) {
    double Mwidth = MediaQuery.of(context).size.width;
    double Mheight = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(
        top: Mheight - (Mheight * 0.9),
        left: Mwidth - (Mwidth * 0.8),
        bottom: Mheight - (Mheight * 0.9),
      ),
      child: Drawer(
        backgroundColor: Colors.white,
        width: Mwidth * 0.6,
        child: Container(
          child: Column(
            children: [
              Container(
                //  color: Colors.orangeAccent,
                height: 100,
                width: Mwidth * 0.6,
                child: Row(children: [
                  Expanded(
                    flex: 1,
                    child: Container(),
                  ),
                  Expanded(
                    flex: 8,
                    child: Container(
                      child: Text(
                        'Filter Section',
                        style: TextStyle(
                            fontFamily: 'Axiforma',
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(width: 2, color: Colors.black))),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Stack(children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: InkWell(
                          hoverColor: Colors.transparent,
                          onTap: () {
                            SearchingClass.globalKey.currentState!
                                .closeDrawer();
                          },
                          child: Padding(
                            padding:
                                const EdgeInsets.only(top: 12.0, right: 12),
                            child: Icon(
                              Icons.dangerous,
                              color: Colors.black,
                              size: 35,
                            ),
                          ),
                        ),
                      )
                    ]),
                  ),
                ]),
              ),
              Row(
                children: [
                  Expanded(flex: 1, child: Container()),
                  Expanded(
                    flex: 8,
                    child: Container(
                      height: Mheight * 0.63,
                      //        color:Colors.black,
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'By Price',
                              style: TextStyle(
                                fontFamily: 'Axiforma',
                                fontSize: 20,
                                // fontWeight: FontWeight.bold
                              ),
                            ),
                            SfRangeSlider(
                              min: 3000.0,
                              max: 50000.0,
                              values: _values,
                              interval: 10000,
                              showTicks: true,
                              showLabels: true,
                              enableTooltip: true,
                              minorTicksPerInterval: 1,
                              onChanged: (SfRangeValues values) {
                                setState(() {
                                  textEditingController1.text =
                                      values.start.toInt().toString();
                                  textEditingController2.text =
                                      values.end.toInt().toString();
                                  _values = values;
                                });
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                              children: [
                                MAXMIN(
                                    title: 'Min',
                                    controller: textEditingController1),
                                MAXMIN(
                                    title: 'Max',
                                    controller: textEditingController2),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'By Distance',
                              style: TextStyle(
                                fontFamily: 'Axiforma',
                                fontSize: 20,
                                // fontWeight: FontWeight.bold
                              ),
                            ),
                            GridView.builder(
                                shrinkWrap: true,
                                itemCount: CheckBoxWidgetList.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        childAspectRatio: 2.2,
                                        crossAxisCount: 3),
                                itemBuilder: (context, index) {
                                  return CheckBoxWidgetList[index];
                                }),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'By Date and Month',
                                  style: TextStyle(
                                    fontFamily: 'Axiforma',
                                    fontSize: 20,
                                    // fontWeight: FontWeight.bold
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                InkWell(
                                  onTap: () {
                                    showDatePicker(
                                            context: context,
                                            initialDate: DateTime.now(),
                                            firstDate: DateTime(2000),
                                            lastDate: DateTime(2030))
                                        .then((value) => {
                                              setState(() {
                                                dateTime = value!;
                                              })
                                            });
                                  },
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      height: 50,
                                      width: 250,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color: Colors.black),
                                      child: Center(
                                        child: Text(
                                          'Select   From   calendar',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontFamily: 'Axiforma',
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Center(
                                  child: Text(
                                    "Date :" +
                                        dateTime.day.toString() +
                                        "/" +
                                        dateTime.month.toString(),
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Axiforma',
                                      fontSize: 16,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Material(
                              shadowColor: Colors.transparent,
                              child: InkWell(
                                hoverColor: Colors.transparent,
                                onTap: () {
                                  setState(() {
                                    temp = SearchingClass().FilterSearch(
                                        CardDesign.PlaceDetails,
                                        _values.start.toInt(),
                                        _values.end.toInt(),
                                        dateTime);

                                    Navigator.push(context, MaterialPageRoute(builder: (context){return FilterClass(list: temp);}));
                                    SearchingClass.globalKey.currentState!.closeDrawer();

                                  });
                                },
                                child: Center(
                                  child: Container(
                                    height: 70,
                                    width: 300,
                                    decoration:
                                        BoxDecoration(color: Colors.black),
                                    child: Center(
                                      child: Text(
                                        '  Search  ',
                                        style: TextStyle(
                                            fontFamily: 'Axiforma',
                                            fontSize: 20,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            // GridView.builder(
                            //     gridDelegate:
                            //         SliverGridDelegateWithFixedCrossAxisCount(
                            //             childAspectRatio: 1,
                            //             crossAxisCount: 2),
                            //     shrinkWrap: true,
                            //     itemCount: temp.length,
                            //     itemBuilder: (context, index) {
                            //       return Material(
                            //         borderRadius: BorderRadius.circular(20),
                            //         color: Colors.transparent,
                            //         shadowColor: Colors.transparent,
                            //         child: Container(
                            //           height: 460,
                            //           width: 320,
                            //           child: InkWell(
                            //             borderRadius:
                            //                 BorderRadius.circular(20),
                            //             hoverColor: Colors.white,
                            //             onTap: () {
                            //               temp[index]
                            //                   .carouselController
                            //                   .nextPage(
                            //                       duration: Duration(
                            //                           milliseconds: 800),
                            //                       curve: Curves.easeIn);
                            //             },
                            //             child: Column(
                            //               children: [
                            //                 Expanded(
                            //                     flex: 7,
                            //                     child: CarouselSlider(
                            //                       carouselController:
                            //                           temp[index]
                            //                               .carouselController,
                            //                       options: CarouselOptions(
                            //                           viewportFraction:
                            //                               0.999999),
                            //                       items: SearchingClass()
                            //                           .CardGenerateList(
                            //                               temp[index]
                            //                                   .images!),
                            //                     )),
                            //                 Expanded(
                            //                   flex: 3,
                            //                   child: Container(
                            //                     //color: Colors.grey,
                            //                     child: Column(
                            //                       crossAxisAlignment:
                            //                           CrossAxisAlignment
                            //                               .start,
                            //                       children: [
                            //                         Row(
                            //                           mainAxisAlignment:
                            //                               MainAxisAlignment
                            //                                   .spaceBetween,
                            //                           crossAxisAlignment:
                            //                               CrossAxisAlignment
                            //                                   .center,
                            //                           children: [
                            //                             Padding(
                            //                               padding:
                            //                                   EdgeInsets.only(
                            //                                       top: 6.0),
                            //                               child: Text(
                            //                                 temp[index]
                            //                                         .townname! +
                            //                                     ", " +
                            //                                     temp[index]
                            //                                         .city!,
                            //                                 style: TextStyle(
                            //                                     fontWeight:
                            //                                         FontWeight
                            //                                             .w500,
                            //                                     fontSize: 16,
                            //                                     fontFamily:
                            //                                         'Axiforma'),
                            //                               ),
                            //                             ),
                            //                             Row(
                            //                               children: [
                            //                                 InkWell(
                            //                                   splashColor: Colors
                            //                                       .transparent,
                            //                                   hoverColor:
                            //                                       Colors
                            //                                           .white,
                            //                                   onTap: () {
                            //                                     if (temp[index]
                            //                                             .isBookMarked ==
                            //                                         true) {
                            //                                       if (SearchingClass
                            //                                               .WishList
                            //                                           .contains(
                            //                                               temp[index])) {
                            //                                         SearchingClass
                            //                                                 .WishList
                            //                                             .remove(
                            //                                                 temp[index]);
                            //                                       }
                            //                                       temp[index]
                            //                                               .isBookMarked =
                            //                                           false;
                            //                                     } else {
                            //                                       temp[index]
                            //                                               .isBookMarked =
                            //                                           true;
                            //                                       SearchingClass
                            //                                               .WishList
                            //                                           .add(temp[
                            //                                               index]);
                            //                                     }
                            //                                     setState(() {
                            //                                       SearchingClass
                            //                                           .WishList;
                            //                                       temp[index]
                            //                                           .isBookMarked;
                            //                                     });
                            //                                   },
                            //                                   child: (temp[index]
                            //                                               .isBookMarked ==
                            //                                           true)
                            //                                       ? Icon(
                            //                                           Icons
                            //                                               .bookmark,
                            //                                           color: Colors
                            //                                               .yellow,
                            //                                           size:
                            //                                               35,
                            //                                         )
                            //                                       : Icon(
                            //                                           Icons
                            //                                               .bookmark_add_outlined,
                            //                                           color: Colors
                            //                                               .black,
                            //                                           size:
                            //                                               30,
                            //                                         ),
                            //                                 ),
                            //                                 SizedBox(
                            //                                   width: 10,
                            //                                 ),
                            //                                 Padding(
                            //                                     padding:
                            //                                         EdgeInsets
                            //                                             .only(
                            //                                                 top: 4.0),
                            //                                     child: Column(
                            //                                       children: [
                            //                                         InkWell(
                            //                                           borderRadius:
                            //                                               BorderRadius.circular(10),
                            //                                           splashColor:
                            //                                               Colors.red,
                            //                                           onTap:
                            //                                               () {
                            //                                             if (temp[index].isLiked ==
                            //                                                 true) {
                            //                                               temp[index].isLiked =
                            //                                                   false;
                            //                                               if (temp[index].likes! >
                            //                                                   0) {
                            //                                                 temp[index].likes = temp[index].likes! - 1;
                            //                                               }
                            //                                             } else {
                            //                                               temp[index].isLiked =
                            //                                                   true;
                            //                                               temp[index].likes =
                            //                                                   temp[index].likes! + 1;
                            //                                             }
                            //                                             setState(
                            //                                                 () {
                            //                                               temp[index].likes;
                            //                                               temp[index].isLiked;
                            //                                             });
                            //                                           },
                            //                                           child: Icon(
                            //                                               Icons
                            //                                                   .favorite,
                            //                                               size:
                            //                                                   25,
                            //                                               color: (temp[index].isLiked == true)
                            //                                                   ? Colors.red
                            //                                                   : Colors.grey[400]),
                            //                                         ),
                            //                                         Text(
                            //                                             temp[index]
                            //                                                 .likes
                            //                                                 .toString(),
                            //                                             style: TextStyle(
                            //                                                 color: Colors.grey[700],
                            //                                                 fontWeight: FontWeight.w500,
                            //                                                 fontSize: 14,
                            //                                                 fontFamily: 'Axiforma'))
                            //                                       ],
                            //                                     )),
                            //                                 SizedBox(
                            //                                   width: 18,
                            //                                 )
                            //                               ],
                            //                             ),
                            //                           ],
                            //                         ),
                            //                         Text(
                            //                             temp[index]
                            //                                 .spotlocation!,
                            //                             style: TextStyle(
                            //                                 color: Colors
                            //                                     .grey[700],
                            //                                 fontWeight:
                            //                                     FontWeight
                            //                                         .w400,
                            //                                 fontSize: 16,
                            //                                 fontFamily:
                            //                                     'Axiforma')),
                            //                         Row(
                            //                           mainAxisAlignment:
                            //                               MainAxisAlignment
                            //                                   .spaceBetween,
                            //                           children: [
                            //                             Text(
                            //                                 temp[index]
                            //                                     .availability!,
                            //                                 style: TextStyle(
                            //                                     color: Colors
                            //                                             .grey[
                            //                                         700],
                            //                                     fontWeight:
                            //                                         FontWeight
                            //                                             .w400,
                            //                                     fontSize: 15,
                            //                                     fontFamily:
                            //                                         'Axiforma')),
                            //                             Row(
                            //                               children: [
                            //                                 SvgPicture.asset(
                            //                                   'assets/logos/star.svg',
                            //                                   height: 17,
                            //                                 ),
                            //                                 SizedBox(
                            //                                   width: 5,
                            //                                 ),
                            //                                 Padding(
                            //                                   padding: EdgeInsets
                            //                                       .only(
                            //                                           top:
                            //                                               4.0),
                            //                                   child: Text(
                            //                                     temp[index]
                            //                                         .rating
                            //                                         .toString(),
                            //                                     style: TextStyle(
                            //                                         fontWeight:
                            //                                             FontWeight
                            //                                                 .w500,
                            //                                         fontSize:
                            //                                             15,
                            //                                         fontFamily:
                            //                                             'Axiforma'),
                            //                                   ),
                            //                                 ),
                            //                               ],
                            //                             ),
                            //                             Row(
                            //                               children: [
                            //                                 Text(
                            //                                     '₹ ' +
                            //                                         temp[index]
                            //                                             .amount
                            //                                             .toString(),
                            //                                     style: TextStyle(
                            //                                         color: Colors
                            //                                                 .grey[
                            //                                             700],
                            //                                         fontWeight:
                            //                                             FontWeight
                            //                                                 .w400,
                            //                                         fontSize:
                            //                                             16,
                            //                                         fontFamily:
                            //                                             'Axiforma')),
                            //                                 SizedBox(
                            //                                     width: 18)
                            //                               ],
                            //                             ),
                            //                           ],
                            //                         )
                            //                       ],
                            //                     ),
                            //                   ),
                            //                 )
                            //               ],
                            //             ),
                            //           ),
                            //         ),
                            //       );
                            //
                            //       //temp[index];
                            //     })
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(flex: 1, child: Container()),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
