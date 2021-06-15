// import 'package:deliveryapp/styles.dart';
import 'package:flutter/material.dart';

import '../Styles.dart';

class History extends StatefulWidget {
  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  bool isSwitched = false;
  void toggleSwitch(bool value) {
    if (isSwitched == false) {
      setState(() {
        isSwitched = true;
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isSwitched = false;
      });
      print('Switch Button is OFF');
    }
  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Color(0xff1f2025),
        appBar: AppBar(
          backgroundColor: Color(0xff2c2c2c),
          centerTitle: true,
          title: Text(
            "Wallet",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          leadingWidth: 100,
          leading: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.notifications_none_sharp,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                children: [
                  Text(
                    "off",
                    style: f15,
                  ),
                  Transform.scale(
                      scale: 1,
                      child: Switch(
                        onChanged: toggleSwitch,
                        value: isSwitched,
                        activeColor: Colors.green,
                        activeTrackColor: Colors.white,
                        inactiveThumbColor: Colors.red,
                        inactiveTrackColor: Colors.white,
                      )),
                  Text(
                    "on",
                    style: f15,
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: new Theme(
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
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "This Month",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: Colors.white,
                          size: 25,
                        ),
                        Container(
                          height: 30,
                          width: 1,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.calendar_today_sharp,
                          color: Colors.white,
                          size: 15,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "01/06/2021 to 22/06/2021",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Container(
                      height: 1,
                      color: Colors.white,
                      width: w,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Delivered",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 13,
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_sharp,
                          color: Colors.white,
                          size: 25,
                        ),
                        Container(
                          height: 30,
                          width: 1,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                    Container(
                      height: 1,
                      color: Colors.white,
                      width: w,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 5.toDouble() * 200,
                  child: ListView.separated(
                      itemCount: 4,
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 6,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Order ID :11254",
                                                style: f15,
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                "01-06-2021 | 09:54",
                                                style: TextStyle(
                                                  fontSize: 12,
                                                ),
                                              ),
                                            ],
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                "Order value",
                                                style: TextStyle(fontSize: 15),
                                              ),
                                              Text("₹590.00", style: f20B),
                                            ],
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Container(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Text(
                                                      "View Details",
                                                      style: TextStyle(
                                                          fontSize: 12),
                                                    ),
                                                    SizedBox(
                                                      width: 5,
                                                    ),
                                                    Image.asset(
                                                      "assets/icons/down-arrow.png",
                                                      height: 15,
                                                      color: Colors.black,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 25.0, top: 7),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: index == 2
                                      ? Color(0xffb42715)
                                      : Color(0xff15b41c),
                                  borderRadius: BorderRadius.circular(13),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 40.0,
                                      right: 40.00,
                                      top: 7,
                                      bottom: 7),
                                  child: Text(
                                    index == 2 ? "Rejected" : "Delivered",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 13,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ),
                              ),
                            )
                          ],
                        );
                      }),
                )
              ],
            ),
          ),
        ));

  }
}
