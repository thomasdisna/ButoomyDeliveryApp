import 'package:bottomydeliveryap/Styles.dart';
// import 'package:deliveryapp/styles.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> with SingleTickerProviderStateMixin {
  TabController _controller;

  bool isSwitched = false;

  List<bool> pressed = List.filled(10000, false);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 2, vsync: this);
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1f2025),
      appBar:  AppBar(
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
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10, top: 10),
                              child: Text(
                                "current week earnings",
                                style: TextStyle(
                                  fontSize: 13,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "₹5,500.00",
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "From 12/06/2021",
                                  style: TextStyle(
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Container(
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                color: Color(0xff04c166),
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(15),
                                  bottomLeft: Radius.circular(15),
                                ),
                              ),
                              height: 7,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Text(
                              "wallet balance",
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "₹35,000",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Total available wallet balance",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Container(
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              color: Color(0xfff0c346),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(15),
                                bottomLeft: Radius.circular(15),
                              ),
                            ),
                            height: 7,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 35,
              decoration: BoxDecoration(
                  border: Border(
                      bottom: BorderSide(
                        color: Colors.grey[600],
                      ))),
              child: Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: TabBar(
                  indicatorColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.tab,
                  indicatorWeight: 2.5,
                  controller: _controller,
                  tabs: [
                    Tab(
                      child: Text(
                        "Payouts",
                        style: f13w600,
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Orders",
                        style: f13w600,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: TabBarView(
                  controller: _controller,
                  children: [
                    Container(
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 13),
                              child: Container(
                                height: 5.toDouble() * 100,
                                child: ListView.builder(
                                  itemCount: 5,
                                  itemBuilder: (context, index) {
                                    return Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              pressed[index] = !pressed[index];
                                            });
                                          },
                                          child: Container(
                                            height: 30,
                                            color: Color(0xff3a3a3a),
                                            child: Padding(
                                              padding: const EdgeInsets.only(
                                                  top: 5,
                                                  bottom: 5,
                                                  left: 30,
                                                  right: 20),
                                              child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceBetween,
                                                children: [
                                                  Text(
                                                    "JUN 2021",
                                                    style: f16w,
                                                  ),
                                                  Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        "₹27,500.00",
                                                        style: f16w,
                                                      ),
                                                      SizedBox(
                                                        width: 15,
                                                      ),
                                                      Image.asset(
                                                        "assets/icons/down-arrow.png",
                                                        height: 20,
                                                        color: Colors.white,
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        pressed[index]
                                            ? Padding(
                                          padding:
                                          const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .spaceBetween,
                                                children: [
                                                  Text(
                                                    "From date",
                                                    style: f12,
                                                  ),
                                                  Text(
                                                    "To Date",
                                                    style: f12,
                                                  ),
                                                  Text(
                                                    "Transaction ID",
                                                    style: f12,
                                                  ),
                                                  Text(
                                                    "Payout Amount",
                                                    style: f12,
                                                  ),
                                                ],
                                              ),
                                              Divider(
                                                thickness: 1,
                                                color: Colors.white,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .start,
                                                children: [
                                                  Text(
                                                    "5/06/2021",
                                                    style: f12,
                                                  ),
                                                  SizedBox(
                                                    width: 35,
                                                  ),
                                                  Text(
                                                    "5/06/2021",
                                                    style: f12,
                                                  ),
                                                  SizedBox(
                                                    width: 30,
                                                  ),
                                                  Text(
                                                    "15222541121",
                                                    style: f12,
                                                  ),
                                                  SizedBox(
                                                    width: 40,
                                                  ),
                                                  Text(
                                                    "₹5,800",
                                                    style: f12,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 7,
                                              ),
                                              DottedLine(
                                                direction:
                                                Axis.horizontal,
                                                lineLength:
                                                double.infinity,
                                                lineThickness: 1.0,
                                                dashLength: 4.0,
                                                dashColor: Colors.white,
                                                dashRadius: 0.0,
                                                dashGapLength: 4.0,
                                                dashGapColor:
                                                Colors.transparent,
                                                dashGapRadius: 0.0,
                                              ),
                                              SizedBox(
                                                height: 7,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment
                                                    .start,
                                                children: [
                                                  Text(
                                                    "5/06/2021",
                                                    style: f12,
                                                  ),
                                                  SizedBox(
                                                    width: 35,
                                                  ),
                                                  Text(
                                                    "5/06/2021",
                                                    style: f12,
                                                  ),
                                                  SizedBox(
                                                    width: 30,
                                                  ),
                                                  Text(
                                                    "15222541121",
                                                    style: f12,
                                                  ),
                                                  SizedBox(
                                                    width: 40,
                                                  ),
                                                  Text(
                                                    "₹5,800",
                                                    style: f12,
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 7,
                                              ),
                                              DottedLine(
                                                direction:
                                                Axis.horizontal,
                                                lineLength:
                                                double.infinity,
                                                lineThickness: 1.0,
                                                dashLength: 4.0,
                                                dashColor: Colors.white,
                                                dashRadius: 0.0,
                                                dashGapLength: 4.0,
                                                dashGapColor:
                                                Colors.transparent,
                                                dashGapRadius: 0.0,
                                              ),
                                            ],
                                          ),
                                        )
                                            : Container(),
                                        SizedBox(
                                          height: 5,
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(),
                  ],
                ),
              ),
            )
          ],
        ),
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
    );
  }
}