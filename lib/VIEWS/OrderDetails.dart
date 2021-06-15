import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Styles.dart';

class OrderDetails extends StatefulWidget {
  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  bool isSwitched = false;
  void toggleSwitch(bool value) {

    if(isSwitched == false)
    {
      setState(() {
        isSwitched = true;
      });
      print('Switch Button is ON');
    }
    else
    {
      setState(() {
        isSwitched = false;
      });
      print('Switch Button is OFF');
    }
  }
  int select;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    select = 1;
  }

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff2c2c2c),
        centerTitle: true,
        title: Text(
          "Order Details",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        leadingWidth: 100,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.menu,color: Colors.white,),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.notifications_none_sharp,color: Colors.white,),
              onPressed: () {},
            ),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right:10),
            child: Row(
              children: [
                Text("off",style: f15,),
                Transform.scale(
                    scale:1,
                    child: Switch(
                      onChanged: toggleSwitch,
                      value: isSwitched,
                      activeColor: Colors.green,
                      activeTrackColor: Colors.white,
                      inactiveThumbColor: Colors.red,
                      inactiveTrackColor: Colors.white,
                    )
                ),
                Text("on",style: f15,),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, right: 20, left: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: select == 1 ? Color(0xFF00ff78) : org,
                          borderRadius: BorderRadius.circular(13),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 34.0, right: 34.00, top: 7, bottom: 7),
                          child: Text(
                            select == 1
                                ? "Accepted"
                                : select == 2
                                    ? "New Order"
                                    : "   ",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      Text(
                        "Order Value",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 13.5,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "OrderID :#11254",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "01-06-2021 | 09:54",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                fontSize: 11.5),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text(
                            "\u20B9590.00",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w900),
                          ),
                          Text(" "),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              height: 1.toDouble() * 600,
              width: w,
              child: ListView.separated(
                  itemCount: 1,
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 10,
                    );
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 20.0, left: 10, right: 10),
                          child: Container(
                            width: w,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            select = 1;
                                          });
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: select == 1
                                                  ? Colors.black
                                                  : Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              border: Border.all(
                                                  width: 1,
                                                  color: Colors.black)),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0,
                                                right: 10.00,
                                                top: 5,
                                                bottom: 5),
                                            child: Text(
                                              "Items",
                                              style: TextStyle(
                                                  color: select == 1
                                                      ? Colors.white
                                                      : Colors.black),
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            select = 2;
                                          });
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: select == 2
                                                  ? Colors.black
                                                  : Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              border: Border.all(
                                                  width: 1,
                                                  color: Colors.black)),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0,
                                                right: 10.00,
                                                top: 5,
                                                bottom: 5),
                                            child: Text(
                                              "Customer",
                                              style: TextStyle(
                                                  color: select == 2
                                                      ? Colors.white
                                                      : Colors.black),
                                            ),
                                          ),
                                        ),
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            select = 3;
                                          });
                                        },
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: select == 3
                                                  ? Colors.black
                                                  : Colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              border: Border.all(
                                                  width: 1,
                                                  color: Colors.black)),
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0,
                                                right: 10.00,
                                                top: 5,
                                                bottom: 5),
                                            child: Text(
                                              "Home Kitchen",
                                              style: TextStyle(
                                                  color: select == 3
                                                      ? Colors.white
                                                      : Colors.black),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                select == 2
                                    ? Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Full Name",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 13),
                                                    ),
                                                    Text(
                                                      "Tojo Thomas",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 13),
                                                    )
                                                  ],
                                                ),
                                                Container( height: 25,
                                                    width: 25,
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                            width: 1,
                                                            color:
                                                            Colors.black)),
                                                    child: Center(child: Icon(Icons.person_rounded)))
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Contact Number",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 13),
                                                    ),
                                                    Text(
                                                      "+91-9778415161",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 13),
                                                    )
                                                  ],
                                                ),
                                                Container(
                                                    height: 25,
                                                    width: 25,
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                            width: 1,
                                                            color:
                                                                Colors.black)),
                                                    child: Center(
                                                        child: Image.asset(
                                                      "assets/phone-call.png",
                                                      height: 15,
                                                      width: 15,
                                                    )))
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Delivery Address",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 13),
                                                    ),
                                                    Text(
                                                      "Puthuparambil house\nPeyad P.O Thiruvanthapurm\nLandmark:Near Bridge",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          fontSize: 13),
                                                    )
                                                  ],
                                                ),
                                                Container(
                                                    height: 25,
                                                    width: 25,
                                                    decoration: BoxDecoration(
                                                        shape: BoxShape.circle,
                                                        border: Border.all(
                                                            width: 1,
                                                            color:
                                                                Colors.black)),
                                                    child: Center(
                                                        child: Icon(
                                                      Icons.arrow_forward,
                                                      color: Colors.black,
                                                    )))
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                    : Container(),
                                select == 1
                                    ? Padding(
                                        padding: const EdgeInsets.only(
                                            right: 22.0, left: 20),
                                        child: Container(
                                          height: 2.toDouble() * 70,
                                          child: ListView.separated(
                                              itemBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return Container(
                                                  child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    children: [
                                                      Row(
                                                        children: [
                                                          Container(
                                                            height: 50,
                                                            width: 50,
                                                            clipBehavior:
                                                                Clip.antiAlias,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: org,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5),
                                                            ),
                                                            child: Image.asset(
                                                              "assets/samsa.jpg",
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          SizedBox(
                                                            width: 9,
                                                          ),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                  "Chicken Biriyani",
                                                                  style: TextStyle(
                                                                      fontSize:
                                                                          13,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500)),
                                                              Text("From Lunch",
                                                                  style: f13)
                                                            ],
                                                          )
                                                        ],
                                                      ),
                                                      Text(
                                                        "x1",
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400),
                                                      )
                                                    ],
                                                  ),
                                                );
                                              },
                                              separatorBuilder:
                                                  (BuildContext context,
                                                      int index) {
                                                return SizedBox(
                                                  height: 10,
                                                );
                                              },
                                              itemCount: 2),
                                        ),
                                      )
                                    : Container(),
                                select == 1
                                    ? Padding(
                                        padding:
                                            const EdgeInsets.only(right: 25.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              "Total Item       ",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w500,
                                                  fontSize: 14),
                                            ),
                                            Text(
                                              ": 2",
                                              style: TextStyle(
                                                  fontWeight: FontWeight.w400,
                                                  fontSize: 14),
                                            ),
                                          ],
                                        ),
                                      )
                                    : Container(),
                                SizedBox(
                                  height: 10,
                                ),
                                select == 1
                                    ? Padding(
                                        padding: const EdgeInsets.only(
                                            left: 1.0, right: 1.0),
                                        child: Container(
                                          height: 50,
                                          width: w,
                                          decoration: BoxDecoration(
                                            color: bla,
                                          ),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5.0),
                                                child: Container(
                                                  child: Container(
                                                    child: DottedLine(
                                                      direction:
                                                          Axis.horizontal,
                                                      lineLength:
                                                          double.infinity,
                                                      lineThickness: 1.0,
                                                      dashLength: 4.0,
                                                      dashColor: Colors.black,
                                                      dashRadius: 0.0,
                                                      dashGapLength: 4.0,
                                                      dashGapColor:
                                                          Colors.transparent,
                                                      dashGapRadius: 0.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 1.0, right: 1.0),
                                                child: Container(
                                                  height: 40,
                                                  width: w,
                                                  decoration: BoxDecoration(
                                                    color: bla,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10.0,
                                                            right: 10.00),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Text(
                                                              "DeliveryFee ",
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                            Text(
                                                              ": \u20B950",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize: 14),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Icon(
                                                              Icons.location_on,
                                                              color: Color(
                                                                  0xFFf7c226),
                                                            ),
                                                            Text(
                                                              "5km",
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            )
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
                                      )
                                    : Container(),
                                select == 2
                                    ? Padding(
                                        padding: const EdgeInsets.only(
                                            left: 1.0, right: 1.0),
                                        child: Container(
                                          height: 50,
                                          width: w,
                                          decoration: BoxDecoration(
                                            color: bla,
                                          ),
                                          child: Column(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 5.0),
                                                child: Container(
                                                  child: Container(
                                                    child: DottedLine(
                                                      direction:
                                                          Axis.horizontal,
                                                      lineLength:
                                                          double.infinity,
                                                      lineThickness: 1.0,
                                                      dashLength: 4.0,
                                                      dashColor: Colors.black,
                                                      dashRadius: 0.0,
                                                      dashGapLength: 4.0,
                                                      dashGapColor:
                                                          Colors.transparent,
                                                      dashGapRadius: 0.0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 1.0, right: 1.0),
                                                child: Container(
                                                  height: 40,
                                                  width: w,
                                                  decoration: BoxDecoration(
                                                    color: bla,
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 10.0,
                                                            right: 10.00),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Row(
                                                          children: [
                                                            Text(
                                                              "DeliveryFee ",
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            ),
                                                            Text(
                                                              ": \u20B950",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize: 14),
                                                            ),
                                                          ],
                                                        ),
                                                        Row(
                                                          children: [
                                                            Icon(
                                                              Icons.location_on,
                                                              color: Color(
                                                                  0xFFf7c226),
                                                            ),
                                                            Text(
                                                              "5km",
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                              ),
                                                            )
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
                                      )
                                    : Container(),
                                SizedBox(
                                  height: 20,
                                ),
                                select == 2
                                    ? Padding(
                                        padding: const EdgeInsets.only(
                                            right: 15.0,
                                            bottom: 20,
                                            left: 15.00),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  height: 30,
                                                  width: 30,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Color(0xFFe56e70)),
                                                  child: Icon(
                                                    Icons.close,
                                                    color: Colors.white,
                                                    size: 20,
                                                  ),
                                                ),
                                                SizedBox(
                                                  width: 10,
                                                ),
                                                Container(
                                                  height: 30,
                                                  width: 30,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle,
                                                      color: Color(0xFF16bd6f)),
                                                  child: Icon(
                                                    Icons.check,
                                                    color: Colors.white,
                                                    size: 20,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    : Container(),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
            )
          ],
        ),
      ),
      bottomNavigationBar:  Container(
        height: 120,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0, right: 7, left: 7),
              child: Container(
                width: w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFFf7c226)),
                child: Row(
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFf6f6f6)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset(
                          "assets/order.png",
                          height: 10,
                          width: 10,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: w,
                        height: 40,
                        child: Center(
                            child: Text(
                              "Order Picked",
                              style: TextStyle(fontWeight: FontWeight.w500),
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ),
            new Theme(
              data: Theme.of(context).copyWith(
                // sets the background color of the `BottomNavigationBar`
                  canvasColor: app,
                  // sets the active color of the `BottomNavigationBar` if `Brightness` is light
                  primaryColor: Colors.red,
                  textTheme: Theme
                      .of(context)
                      .textTheme
                      .copyWith(caption: new TextStyle(color: Colors.yellow))), // sets the inactive color of the `BottomNavigationBar`
              child: new BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: 0,
                items: [
                  new BottomNavigationBarItem(
                    icon:ImageIcon(AssetImage("assets/clipboard.png"),size: 20,color: Colors.white,),
                    title: new Text("Orders",style: TextStyle(color: Colors.white,fontSize: 12),),
                  ),
                  new BottomNavigationBarItem(
                    icon:ImageIcon(AssetImage("assets/history-clock-button.png"),size: 20,color: Colors.white,),
                    title: new Text("History",style: TextStyle(color: Colors.white,fontSize: 12),),
                  ),
                  new BottomNavigationBarItem(
                    icon:Container(child:Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: ImageIcon(AssetImage("assets/refresh.png"),size: 20,color: Colors.white,),
                    ) ,
                      height: 45,
                      width: 45,
                      decoration: BoxDecoration(color: Color(0xFF64b8d2),
                          shape: BoxShape.circle),
                    ),

                    title: Container(),

                  ),
                  new BottomNavigationBarItem(
                    icon:ImageIcon(AssetImage("assets/wallet.png"),size: 20,color: Colors.white,),
                    title: new Text("Wallet",style: TextStyle(color: Colors.white,fontSize: 12),),
                  ),
                  new BottomNavigationBarItem(
                    icon:ImageIcon(AssetImage("assets/user (1).png"),size: 20,color: Colors.white,),
                    title: new Text("Profile",style: TextStyle(color: Colors.white,fontSize: 12),),
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
// Padding(
//             padding: const EdgeInsets.only(bottom: 20.0, right: 7, left: 7),
//             child: Container(
//               width: w,
//               decoration: BoxDecoration(
//                   borderRadius: BorderRadius.circular(10),
//                   color: Color(0xFFf7c226)),
//               child: Row(
//                 children: [
//                   Container(
//                     clipBehavior: Clip.antiAlias,
//                     height: 40,
//                     width: 40,
//                     decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//                         color: Color(0xFFf6f6f6)),
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: Image.asset(
//                         "assets/order.png",
//                         height: 10,
//                         width: 10,
//                       ),
//                     ),
//                   ),
//                   Expanded(
//                     child: Container(
//                       width: w,
//                       height: 40,
//                       child: Center(
//                           child: Text(
//                         "Order Picked",
//                         style: TextStyle(fontWeight: FontWeight.w500),
//                       )),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
