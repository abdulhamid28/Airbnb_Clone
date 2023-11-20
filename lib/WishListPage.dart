
import 'package:airbnb_clone/Imports/ImportPackages.dart';


class WishListScreen extends StatefulWidget {

  CardDesign cardDesign ;
   WishListScreen({required this.cardDesign});

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  int count  =0 ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Material(
            child: Container(
              height: 150,
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/logos/airbnb.svg',
                              color: Colors.blueGrey,
                              height: 80,
                            ),
                            Text(
                              'Booking',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.black,
                                fontFamily: 'Axiforma',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Expanded(
                      flex: 5,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Text(
                            'One of the dreams on my wish list is to spend more time in Thailand.',
                            style: TextStyle(
                              //   fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.white, fontFamily: 'Axiforma',
                            ),
                          ),
                        ),
                        color: Colors.blueGrey[300],
                      ))
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 180,
            child:  BookingWidget(cd: widget.cardDesign),
          )
        ],
      ),
    );
  }
}



class BookingWidget extends StatefulWidget {
  CardDesign cd ;

  BookingWidget({required this.cd});

  @override
  State<BookingWidget> createState() => _BookingWidgetState();
}

class _BookingWidgetState extends State<BookingWidget> {
  int count =0; bool isPaid = false ;
  @override
  Widget build(BuildContext context) {
    double SW = MediaQuery.of(context).size.width;

    return (SW>1300) ?
    Row(
      children: [
        Expanded(flex: 1, child: Container()),
        Expanded(
          flex: 7,
          child: Container(
            width: MediaQuery
                .of(context)
                .size
                .width / 2,
            height: 500,
            decoration: BoxDecoration(
              //   color: Colors.orange,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    bottomLeft: Radius.circular(30))),
            child:
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30)),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: ClipRRect(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    bottomLeft: Radius.circular(30)),
                                child: Image.asset(
                                  widget.cd.elongated!,
                                  width: double.maxFinite,
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 30.0, bottom: 20),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(widget.cd.city!,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontFamily: 'Axiforma',
                                    )),
                                Text(widget.cd.townname!,
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 60,
                                      color: Colors.white,
                                      fontFamily: 'Axiforma',
                                    )),
                              ],
                            ),
                          ),
                        )
                      ],
                    )),
                Expanded(
                  flex: 1,
                  child: Column(children: [
                    Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Container(
                            child: Image.asset(
                              widget.cd.images![2],
                              fit: BoxFit.cover,
                            ),
                            decoration: BoxDecoration(color: Colors.purple),
                          ),
                        )),
                    Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            decoration:
                            BoxDecoration(color: Colors.greenAccent),
                            child: Image.asset(
                              widget.cd.images![0],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ))
                  ]),
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 5,
          child: Stack(children: [
            Container(
              //  decoration: BoxDecoration(color: Colors.red),
              width: MediaQuery
                  .of(context)
                  .size
                  .width / 2,
              height: 500,
              //  decoration: BoxDecoration(color: Colors.red),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('About this Place',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 60,
                        color: Colors.black,
                        fontFamily: 'Axiforma',
                      )),
                  Text(
                      'Explore the charm of an Italian castle nestled amidst picturesque landscapes.  this enchanting fortress showcases magnificent architecture, regal interiors, and breathtaking views of the Italian countryside.',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.blueGrey[400],
                        fontFamily: 'Axiforma',
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.cd.availability!,
                          style: TextStyle(
                             fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.blueGrey[400],
                            fontFamily: 'Axiforma',
                          )),
                      Text(widget.cd.spotlocation!,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.blueGrey[300],
                            fontFamily: 'Axiforma',
                          )),
                    ],
                  ),
                  Text('Amenities',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Colors.black,
                        fontFamily: 'Axiforma',
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Container(
                      width: 50,
                      child: Text('Dyer' , style: TextStyle(
                          fontFamily: 'Axiforma',

                          color: Colors.black ,fontSize: 14),),
                    ),
                      Container(
                        width: 60,
                        child: Text('Cooler' , style: TextStyle(
                            fontFamily: 'Axiforma',

                            color: Colors.black ,fontSize: 14),),
                      ),
                      Container(

                        child: Text('Owen' , style: TextStyle(
                            fontFamily: 'Axiforma',
                            color: Colors.black ,fontSize: 14),),
                      ),
                      Container(

                        child: Text('Vending Machine' , style: TextStyle(
                            fontFamily: 'Axiforma',
                            color: Colors.black ,fontSize: 14),),
                      )
                  ],),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Number of people : ' + '${count}',
                          style: TextStyle(
                             fontWeight: FontWeight.bold,
                            fontSize: 17,
                            color: Colors.black,
                            fontFamily: 'Axiforma',
                          )),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              if (count > 0) {
                                setState(() {
                                  count = count - 1;
                                });
                              }
                            },
                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.remove,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                count = count + 1;
                              });
                            },

                            child: Container(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.add,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('\$ ${widget.cd.amount! * count}',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 19,
                                color: Colors.black,
                                fontFamily: 'Axiforma',
                              )),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('${count}tickets',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                //fontWeight: FontWeight.w900,
                                fontSize: 15,
                                color: Colors.black,
                                fontFamily: 'Axiforma',
                              )),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 60,
                    child:  Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(20),
                            child: InkWell(
                              onTap: () {
                                //remove function
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.black),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.bookmark,
                                        color: Colors.white,
                                      ),
                                      Text('Pick Date ',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontFamily: 'Axiforma',
                                          )),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Expanded(
                            flex: 1,
                            child: Material(
                              elevation: 5,
                              borderRadius: BorderRadius.circular(20),
                              child: InkWell(
                                onTap: (){
                                  if(isPaid==false){
                                    isPaid = true;
                                  }else isPaid = false;
                                  setState(() {
                                    isPaid ;
                                  });
                                },
                                child: Container(
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text( isPaid == true ? 'Paid' : 'Pay now'  ,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16,
                                            color: Colors.white,
                                            fontFamily: 'Axiforma',
                                          )),
                                    ),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.black)),
                              ),
                            )),
                      ],
                    ),
                  )
                ],
              ),
              //  color: Colors.yellow,
            ),
            Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.bookmark,
                  color: Colors.yellow,
                  size: 40,
                ))
          ]),
        ),
        Expanded(flex: 1, child: Container()),
      ],
    ) : Column(children: [ Expanded(
      flex: 7,
      child: Container(
        width: MediaQuery
            .of(context)
            .size
            .width / 2,
        height: 500,
        decoration: BoxDecoration(
          //   color: Colors.orange,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomLeft: Radius.circular(30))),
        child:
        Row(
          children: [
            Expanded(
                flex: 1,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            bottomLeft: Radius.circular(30)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                bottomLeft: Radius.circular(30)),
                            child: Image.asset(
                              widget.cd.elongated!,
                              width: double.maxFinite,
                              fit: BoxFit.cover,
                            )),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 30.0, bottom: 20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(widget.cd.city!,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontFamily: 'Axiforma',
                                )),
                            Text(widget.cd.townname!,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 60,
                                  color: Colors.white,
                                  fontFamily: 'Axiforma',
                                )),
                          ],
                        ),
                      ),
                    )
                  ],
                )),
            Expanded(
              flex: 1,
              child: Column(children: [
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Container(
                        child: Image.asset(
                          widget.cd.images![2],
                          fit: BoxFit.cover,
                        ),
                        decoration: BoxDecoration(color: Colors.purple),
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration:
                        BoxDecoration(color: Colors.greenAccent),
                        child: Image.asset(
                          widget.cd.images![0],
                          fit: BoxFit.cover,
                        ),
                      ),
                    ))
              ]),
            )
          ],
        ),
      ),
    ),
      Expanded(
        flex: 5,
        child: Stack(children: [
          Container(
            //  decoration: BoxDecoration(color: Colors.red),
            width: MediaQuery
                .of(context)
                .size
                .width / 2,
            height: 500,
            //  decoration: BoxDecoration(color: Colors.red),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('About this Place',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 60,
                      color: Colors.black,
                      fontFamily: 'Axiforma',
                    )),
                Text(
                    'Explore the charm of an Italian castle nestled amidst picturesque landscapes.  this enchanting fortress showcases magnificent architecture, regal interiors, and breathtaking views of the Italian countryside.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.blueGrey[400],
                      fontFamily: 'Axiforma',
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(widget.cd.availability!,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.blueGrey[400],
                          fontFamily: 'Axiforma',
                        )),
                    Text(widget.cd.spotlocation!,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.blueGrey[300],
                          fontFamily: 'Axiforma',
                        )),
                  ],
                ),
                Text('Amenities',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black,
                      fontFamily: 'Axiforma',
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 50,
                      child: Text('Dyer' , style: TextStyle(
                          fontFamily: 'Axiforma',

                          color: Colors.black ,fontSize: 14),),
                    ),
                    Container(
                      width: 60,
                      child: Text('Cooler' , style: TextStyle(
                          fontFamily: 'Axiforma',

                          color: Colors.black ,fontSize: 14),),
                    ),
                    Container(

                      child: Text('Owen' , style: TextStyle(
                          fontFamily: 'Axiforma',
                          color: Colors.black ,fontSize: 14),),
                    ),
                    Container(

                      child: Text('Vending Machine' , style: TextStyle(
                          fontFamily: 'Axiforma',
                          color: Colors.black ,fontSize: 14),),
                    )
                  ],),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Number of people : ' + '${count}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: Colors.black,
                          fontFamily: 'Axiforma',
                        )),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            if (count > 0) {
                              setState(() {
                                count = count - 1;
                              });
                            }
                          },
                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.remove,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              count = count + 1;
                            });
                          },

                          child: Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(
                                Icons.add,
                                size: 30,
                                color: Colors.white,
                              ),
                            ),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('\$ ${widget.cd.amount! * count}',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 19,
                              color: Colors.black,
                              fontFamily: 'Axiforma',
                            )),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('${count}tickets',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              //fontWeight: FontWeight.w900,
                              fontSize: 15,
                              color: Colors.black,
                              fontFamily: 'Axiforma',
                            )),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  height: 60,
                  child:  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Material(
                          elevation: 5,
                          borderRadius: BorderRadius.circular(20),
                          child: InkWell(
                            onTap: () {
                              //remove function
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.black),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.bookmark,
                                      color: Colors.white,
                                    ),
                                    Text('Pick Date ',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontFamily: 'Axiforma',
                                        )),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          flex: 1,
                          child: Material(
                            elevation: 5,
                            borderRadius: BorderRadius.circular(20),
                            child: InkWell(
                              onTap: (){
                                if(isPaid==false){
                                  isPaid = true;
                                }else isPaid = false;
                                setState(() {
                                  isPaid ;
                                });
                              },
                              child: Container(
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text( isPaid == true ? 'Paid' : 'Pay now'  ,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                          color: Colors.white,
                                          fontFamily: 'Axiforma',
                                        )),
                                  ),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.black)),
                            ),
                          )),
                    ],
                  ),
                )
              ],
            ),
            //  color: Colors.yellow,
          ),
          Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.bookmark,
                color: Colors.yellow,
                size: 40,
              ))
        ]),
      ),],);
  }}

