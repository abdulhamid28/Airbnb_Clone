import 'package:airbnb_clone/Imports/ImportPackages.dart';

import '../WishListPage.dart';

class FilterClass extends StatefulWidget {
  List<CardDesign> list ;

  FilterClass({required this.list});

  @override
  State<FilterClass> createState() => _FilterClassState();
}


class _FilterClassState extends State<FilterClass> {
  @override

  int selected = 0;
  bool isLoading = true;

  ScrollController scrollController = ScrollController();
  List<CardDesign> listOfSortedPlaces = [];
   GlobalKey<ScaffoldState> globalKey2 = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () {
      setState(() {
        isLoading = false;
        listOfSortedPlaces= widget.list;

      });
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      key: globalKey2,
      drawer: DrawerClass(),
      body: Container(
        child:  Column(
          children: [
            Column(
              children: [
                Material(
                  child: Container(
                    height: 200,
                    // decoration: BoxDecoration(color: Colors.blueGrey,),
                    child: Column(
                      children: [
                        Expanded(
                          flex: 10,
                          child: Material(
                            elevation: 3,
                            child: Container(
                              decoration: BoxDecoration(color: Colors.white),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        Expanded(flex: 2, child: Container()),
                                        Expanded(
                                          flex: 8,
                                          child: Align(
                                            alignment: Alignment.centerLeft,
                                            child: Container(
                                              //color: Colors.yellow,
                                              child: SvgPicture.asset(
                                                'assets/logos/airbnb.svg',
                                                height: 40,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      // color: Colors.blue,
                                      child: Center(
                                        child: Material(
                                          elevation: 3,
                                          borderRadius:
                                          BorderRadius.circular(25),
                                          child: Container(
                                            height: 54,
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    width: 0.5,
                                                    color: Colors.grey),
                                                borderRadius:
                                                BorderRadius.circular(25),
                                                color: Colors.white),
                                            child: Row(
                                              children: [
                                                SizedBox(
                                                  width: 8,
                                                ),
                                                Expanded(
                                                    flex: 1,
                                                    child: Container(
                                                      height: 40,
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(
                                                              25),
                                                          color:
                                                          Colors.redAccent
                                                        //Color.fromRGBO(228, 29, 85, 100),
                                                      ),
                                                      child: Icon(
                                                        Icons.search,
                                                        color: Colors.white,
                                                        size: 25,
                                                      ),
                                                    )),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Expanded(
                                                  flex: 8,
                                                  child: Center(
                                                    child: TextFormField(
                                                      style: TextStyle(
                                                          color: Colors
                                                              .grey[700],
                                                          fontSize: 17),
                                                      maxLines: 1,
                                                      decoration:
                                                      InputDecoration(
                                                        hintText:
                                                        'Search destination..',
                                                        labelStyle: TextStyle(
                                                            color: Colors
                                                                .redAccent,
                                                            fontWeight:
                                                            FontWeight
                                                                .bold),
                                                        border:
                                                        InputBorder.none,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            width: 430,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      //     color: Colors.orange,
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Expanded(
                                              flex: 1,
                                              child: Material(
                                                color: Colors.white,
                                                shadowColor: Colors.white,
                                                child: InkWell(
                                                  splashColor: Colors.grey,
                                                  hoverColor:
                                                  Colors.transparent,
                                                  onTap: () {
                                                    SearchingClass.globalKey
                                                        .currentState!
                                                        .openDrawer();
                                                  },
                                                  child: Container(
                                                    //color: Colors.white,
                                                    height: 20,
                                                    child: Row(
                                                      children: [
                                                        SvgPicture.asset(
                                                            'logos/filter.svg'),
                                                        Text(
                                                          'Filter',
                                                          style: TextStyle(
                                                              fontWeight:
                                                              FontWeight
                                                                  .w500,
                                                              fontSize: 18,
                                                              fontFamily:
                                                              'Axiforma'),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              )),
                                          Builder(builder: (contextt) {
                                            return Material(
                                              borderRadius:
                                              BorderRadius.circular(30),
                                              color: Colors.white,
                                              child: InkWell(
                                                borderRadius:
                                                BorderRadius.circular(30),
                                                onTap: () {
                                                  setState(() {
                                                    listOfSortedPlaces = SearchingClass.WishList;
                                                  });

                                                  // Navigator.push(
                                                  //     contextt,
                                                  //     MaterialPageRoute(
                                                  //         builder: (Context) =>
                                                  //         const WishListScreen()));
                                                },
                                                child: Padding(
                                                  padding:
                                                  const EdgeInsets.all(
                                                      8.0),
                                                  child: Container(
                                                    child: Row(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .center,
                                                      children: [
                                                        Icon(
                                                          Icons
                                                              .bookmark_add_outlined,
                                                          size: 25,
                                                        ),
                                                        SizedBox(
                                                          width: 10,
                                                        ),
                                                        Text(
                                                          'WishList',
                                                          style: TextStyle(
                                                              fontWeight:
                                                              FontWeight
                                                                  .w500,
                                                              fontSize: 18,
                                                              fontFamily:
                                                              'Axiforma'),
                                                        ),
                                                        // SizedBox(width: 20,)
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          }),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Material(
                                            elevation: 3,
                                            color: Colors.white,
                                            borderRadius:
                                            BorderRadius.circular(25),
                                            child: Container(
                                              height: 54,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                BorderRadius.circular(25),
                                                border: Border.all(
                                                    width: 0.5,
                                                    color: Colors.grey),
                                                // color: Colors.white
                                              ),
                                              child: InkWell(
                                                onTap: () {},
                                                borderRadius:
                                                BorderRadius.circular(25),
                                                hoverColor:
                                                Colors.blueGrey[100],
                                                child: Row(
                                                  children: [
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                    Text(
                                                      ' Welcome.',
                                                      style: TextStyle(
                                                          fontFamily:
                                                          'Axiforma',
                                                          fontSize: 17,
                                                          color: Colors
                                                              .redAccent,
                                                          fontWeight:
                                                          FontWeight
                                                              .bold),
                                                    ),
                                                    Container(
                                                      child: Padding(
                                                        padding:
                                                        const EdgeInsets
                                                            .all(8.0),
                                                        child: Center(
                                                          child: Image.asset(
                                                              'assets/logos/man.png'),
                                                          // Icon(Icons.person, color: Colors.grey,
                                                          //  size: 36,),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 10,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 50,
                                          )
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Expanded(
                          flex: 10,
                          child: Container(
                            decoration: BoxDecoration(color: Colors.white),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    //        color: Colors.orangeAccent,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            //  color:  Colors.black,
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              // color: Colors.red,
                                                borderRadius:
                                                BorderRadius.circular(
                                                    25)),
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  12, 27, 12, 27.0),
                                              child: Material(
                                                color: Colors.white,
                                                elevation: 2,
                                                borderRadius:
                                                BorderRadius.circular(30),
                                                child: InkWell(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      30),
                                                  splashColor: Colors.grey,
                                                  onTap: () {
                                                    scrollController.animateTo(
                                                        0,
                                                        duration: Duration(
                                                            milliseconds:
                                                            700),
                                                        curve: Curves.easeIn);
                                                  },
                                                  child: Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(
                                                              30)),
                                                      child: Center(
                                                          child: SvgPicture
                                                              .asset(
                                                            height: 25,
                                                            'assets/logos/scrollleft.svg',
                                                            color:
                                                            Colors.grey[500],
                                                          ))),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 18,
                                  child: Container(
                                    color: Colors.white,
                                    child: SingleChildScrollView(
                                      controller: scrollController,
                                      scrollDirection: Axis.horizontal,
                                      child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          shrinkWrap: true,
                                          itemCount:
                                          CategoryWidgetList.length,
                                          itemBuilder: (context, index) {
                                            return isLoading == true
                                                ? Shimmer.fromColors(
                                              baseColor:
                                              Colors.transparent,
                                              highlightColor:
                                              Colors.white,
                                              child: Padding(
                                                padding:
                                                const EdgeInsets
                                                    .all(20.0),
                                                child: Container(
                                                    height: 100,
                                                    width: 100,
                                                    decoration: BoxDecoration(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            50),
                                                        color: Colors
                                                            .black
                                                            .withOpacity(
                                                            0.1))),
                                              ),
                                            )
                                                : CategoryWidget()
                                                .CategoryWidgetGen(
                                                selectedindex:
                                                selected,
                                                CategoryIcon:
                                                CategoryWidgetList[
                                                index]
                                                    .categoryIcon,
                                                CategoryName:
                                                CategoryWidgetList[
                                                index]
                                                    .categoryName,
                                                index: index,
                                                fuct: () {
                                                  selected = index;
                                                  listOfSortedPlaces = (index !=
                                                      0)
                                                      ? SearchingClass().Search(
                                                      CardDesign
                                                          .PlaceDetails,
                                                      CategoryWidgetList[
                                                      index]
                                                          .categoryName)
                                                      : SearchingClass()
                                                      .Search(
                                                      CardDesign
                                                          .PlaceDetails,
                                                      "");
                                                  setState(() {
                                                    listOfSortedPlaces;
                                                    selected;
                                                  });
                                                });
                                            //CategoryWidgetList[index];
                                          }),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    //        color: Colors.orangeAccent,
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            decoration: BoxDecoration(
                                              // color: Colors.red,
                                                borderRadius:
                                                BorderRadius.circular(
                                                    25)),
                                            child: Padding(
                                              padding: EdgeInsets.fromLTRB(
                                                  12, 27, 12, 27.0),
                                              child: Material(
                                                color: Colors.white,
                                                elevation: 2,
                                                borderRadius:
                                                BorderRadius.circular(30),
                                                child: InkWell(
                                                  borderRadius:
                                                  BorderRadius.circular(
                                                      30),
                                                  splashColor: Colors.grey,
                                                  onTap: () {
                                                    scrollController.animateTo(
                                                        100,
                                                        duration: Duration(
                                                            milliseconds:
                                                            700),
                                                        curve: Curves.easeIn);

                                                    //.animateTo(10, duration: Duration(milliseconds: 500), curve: Curves.bounceIn);
                                                  },
                                                  child: Container(
                                                      decoration: BoxDecoration(
                                                          borderRadius:
                                                          BorderRadius
                                                              .circular(
                                                              30)),
                                                      child: Center(
                                                          child: SvgPicture
                                                              .asset(
                                                            height: 25,
                                                            'assets/logos/scrollright.svg',
                                                            color:
                                                            Colors.grey[500],
                                                          ))),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Container(
                                            //  color:  Colors.black,
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ), //
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height - 230,
              // constraints: BoxConstraints(maxHeight: 500),
              child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(flex: 1, child: Container()),
                          Expanded(
                              flex: 12,
                              child: (listOfSortedPlaces.length != 0)
                                  ? Column(
                                children: [
                                  GridView.builder(
                                      shrinkWrap: true,
                                      gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          childAspectRatio: .7,
                                          crossAxisCount: 4,
                                          crossAxisSpacing: 16,
                                          mainAxisSpacing: 15),
                                      itemCount: listOfSortedPlaces.length,
                                      itemBuilder: (context, index) {
                                        return isLoading == true
                                            ? Shimmer.fromColors(
                                          baseColor:
                                          Colors.transparent,
                                          highlightColor:
                                          Colors.white,
                                          child: Padding(
                                            padding:
                                            const EdgeInsets.all(
                                                20.0),
                                            child: Container(
                                                height: 460,
                                                width: 320,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                    BorderRadius
                                                        .circular(
                                                        50),
                                                    color: Colors
                                                        .black
                                                        .withOpacity(
                                                        0.1))),
                                          ),
                                        )
                                            : Material(
                                          borderRadius:
                                          BorderRadius.circular(
                                              20),
                                          color: Colors.transparent,
                                          shadowColor:
                                          Colors.transparent,
                                          child: Container(
                                            height: 460,
                                            width: 320,
                                            child: InkWell(
                                              borderRadius:
                                              BorderRadius
                                                  .circular(20),
                                              hoverColor:
                                              Colors.white,
                                              onTap: () {
                                                listOfSortedPlaces[
                                                index]
                                                    .carouselController
                                                    .nextPage(
                                                    duration: Duration(
                                                        milliseconds:
                                                        800),
                                                    curve: Curves
                                                        .easeIn);
                                              },
                                              child: Column(
                                                children: [
                                                  Expanded(
                                                      flex: 7,
                                                      child:
                                                      CarouselSlider(
                                                        carouselController:
                                                        listOfSortedPlaces[
                                                        index]
                                                            .carouselController,
                                                        options: CarouselOptions(
                                                            viewportFraction:
                                                            0.999999),
                                                        items: SearchingClass()
                                                            .CardGenerateList(
                                                            listOfSortedPlaces[index]
                                                                .images!),
                                                      )),
                                                  Expanded(
                                                    flex: 3,
                                                    child: InkWell(

                                                        onTap: (){
                                                          Navigator.push(
                                                              context,
                                                              MaterialPageRoute(
                                                                  builder: (Context) =>
                                                                      WishListScreen(cardDesign: listOfSortedPlaces[index],)));
                                                        },

                                                      child: Container(
                                                        //color: Colors.grey,
                                                        child: Column(
                                                          crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                          children: [
                                                            Row(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                              crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                              children: [
                                                                Padding(
                                                                  padding:
                                                                  EdgeInsets.only(top: 6.0),
                                                                  child:
                                                                  Text(
                                                                    listOfSortedPlaces[index].townname! +
                                                                        ", " +
                                                                        listOfSortedPlaces[index].city!,
                                                                    style: TextStyle(
                                                                        fontWeight: FontWeight.w500,
                                                                        fontSize: 16,
                                                                        fontFamily: 'Axiforma'),
                                                                  ),
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    InkWell(
                                                                      splashColor: Colors.transparent,
                                                                      hoverColor: Colors.white,
                                                                      onTap: () {
                                                                        if (listOfSortedPlaces[index].isBookMarked == true) {
                                                                          if (SearchingClass.WishList.length>0 &&  SearchingClass.WishList.contains(listOfSortedPlaces[index])) {
                                                                            SearchingClass.WishList.remove(listOfSortedPlaces[index]);
                                                                          }
                                                                          listOfSortedPlaces[index].isBookMarked = false;
                                                                        } else {
                                                                          listOfSortedPlaces[index].isBookMarked = true;
                                                                          SearchingClass.WishList.add(listOfSortedPlaces[index]);
                                                                        }
                                                                        setState(() {
                                                                          SearchingClass.WishList;
                                                                          listOfSortedPlaces[index].isBookMarked;
                                                                        });
                                                                      },
                                                                      child: (listOfSortedPlaces[index].isBookMarked == true)
                                                                          ? Icon(
                                                                        Icons.bookmark,
                                                                        color: Colors.yellow,
                                                                        size: 35,
                                                                      )
                                                                          : Icon(
                                                                        Icons.bookmark_add_outlined,
                                                                        color: Colors.black,
                                                                        size: 30,
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width: 10,
                                                                    ),
                                                                    Padding(
                                                                        padding: EdgeInsets.only(top: 4.0),
                                                                        child: Column(
                                                                          children: [
                                                                            InkWell(
                                                                              borderRadius: BorderRadius.circular(10),
                                                                              splashColor: Colors.red,
                                                                              onTap: () {
                                                                                if (listOfSortedPlaces[index].isLiked == true) {
                                                                                  listOfSortedPlaces[index].isLiked = false;
                                                                                  if (listOfSortedPlaces[index].likes! > 0) {
                                                                                    listOfSortedPlaces[index].likes = listOfSortedPlaces[index].likes! - 1;
                                                                                  }
                                                                                } else {
                                                                                  listOfSortedPlaces[index].isLiked = true;
                                                                                  listOfSortedPlaces[index].likes = listOfSortedPlaces[index].likes! + 1;
                                                                                }
                                                                                setState(() {
                                                                                  listOfSortedPlaces[index].likes;
                                                                                  listOfSortedPlaces[index].isLiked;
                                                                                });
                                                                              },
                                                                              child: Icon(Icons.favorite, size: 25, color: (listOfSortedPlaces[index].isLiked == true) ? Colors.red : Colors.grey[400]),
                                                                            ),
                                                                            Text(listOfSortedPlaces[index].likes.toString(), style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.w500, fontSize: 14, fontFamily: 'Axiforma'))
                                                                          ],
                                                                        )),
                                                                    SizedBox(
                                                                      width: 18,
                                                                    )
                                                                  ],
                                                                ),
                                                              ],
                                                            ),
                                                            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                              children: [
                                                                Text(
                                                                    listOfSortedPlaces[index]
                                                                        .spotlocation!,
                                                                    style: TextStyle(
                                                                        color: Colors.grey[
                                                                        700],
                                                                        fontWeight: FontWeight
                                                                            .w400,
                                                                        fontSize:
                                                                        16,
                                                                        fontFamily:
                                                                        'Axiforma')),
                                                                Row(
                                                                  children: [Text(
                                                                      'Book now',
                                                                      style: TextStyle(
                                                                          color: Colors.grey[
                                                                          700],
                                                                          fontWeight: FontWeight
                                                                              .w400,
                                                                          fontSize:
                                                                          16,
                                                                          fontFamily:
                                                                          'Axiforma')),SizedBox(width: 13,)],
                                                                )
                                                              ],
                                                            ),
                                                            Row(
                                                              mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                              children: [
                                                                Text(
                                                                    listOfSortedPlaces[index]
                                                                        .availability!,
                                                                    style: TextStyle(
                                                                        color: Colors.grey[700],
                                                                        fontWeight: FontWeight.w400,
                                                                        fontSize: 15,
                                                                        fontFamily: 'Axiforma')),
                                                                Row(
                                                                  children: [
                                                                    SvgPicture.asset(
                                                                      'assets/logos/star.svg',
                                                                      height: 17,
                                                                    ),
                                                                    SizedBox(
                                                                      width: 5,
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsets.only(top: 4.0),
                                                                      child: Text(
                                                                        listOfSortedPlaces[index].rating.toString(),
                                                                        style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15, fontFamily: 'Axiforma'),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                                Row(
                                                                  children: [
                                                                    Text('₹ ' + listOfSortedPlaces[index].amount.toString(),
                                                                        style: TextStyle(color: Colors.grey[700], fontWeight: FontWeight.w400, fontSize: 16, fontFamily: 'Axiforma')),
                                                                    SizedBox(width: 18)
                                                                  ],
                                                                ),
                                                              ],
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      }),
                                ],
                              )
                                  : Container(
                                //  color: Colors.red,
                                height: MediaQuery.of(context).size.height -
                                    230,
                                child: Center(
                                  child: Text(
                                    'Loading results :)',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontFamily: 'Axiforma',
                                        color: Colors.grey[500]),
                                  ),
                                ),
                              )),
                          Expanded(flex: 1, child: Container())
                        ],
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }
}
