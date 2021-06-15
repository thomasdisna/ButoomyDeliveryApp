import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Styles.dart';

class Order2 extends StatefulWidget {
  @override
  _Order2State createState() => _Order2State();
}

class _Order2State extends State<Order2> {
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
  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: Color(0xff2c2c2c),
        centerTitle: true,
        title: Text(
          "Orders",
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
        child: Container(
          child: Column(
            children: [
              Container(
                height: 1.toDouble()*1000,
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
                                    padding: const EdgeInsets.only(top:10.0,right: 20,left: 20),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.end,
                                          children: [
                                            Text("Order Value",style: TextStyle(
                                                fontSize: 13.5,fontWeight: FontWeight.w400
                                            ),),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                              children: [
                                                Text("OrderID :#11254",style: TextStyle(
                                                    fontSize: 14,fontWeight: FontWeight.w700
                                                ),),
                                                Text("01-06-2021 | 09:54",style: TextStyle(
                                                    fontWeight: FontWeight.w500,fontSize: 11.5
                                                ),)
                                              ],
                                            ),
                                            Column(
                                              children: [
                                                Text("\u20B9590.00",style: f24,),
                                                Text(" "),
                                              ],
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right:22.0,left: 20),
                                    child: Container(height: 2.toDouble()*70,
                                      child: ListView.separated(
                                          itemBuilder: (BuildContext context,int index){
                                            return Container(
                                              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(height: 50,width: 50,
                                                        clipBehavior: Clip.antiAlias,
                                                        decoration: BoxDecoration(color: org,
                                                          borderRadius: BorderRadius.circular(5),
                                                        ),
                                                        child: Image.asset("assets/samsa.jpg",fit: BoxFit.cover,),),
                                                      SizedBox(width: 9,),
                                                      Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          Text("Chicken Biriyani",style: TextStyle(
                                                              fontSize: 13,fontWeight: FontWeight.w500
                                                          )),
                                                          Text("From Lunch",style:f13)
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                  Text("x1",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400),)

                                                ],
                                              ),

                                            );
                                          },
                                          separatorBuilder:(BuildContext context,int index){
                                            return  SizedBox(height: 10,);
                                          },
                                          itemCount: 2),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right:25.0),
                                    child: Row(  mainAxisAlignment:
                                    MainAxisAlignment.end,
                                      children: [
                                        Text("Total Item       ",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14),),
                                        Text(": 2",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),

                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10,),
                                  Padding(
                                    padding: const EdgeInsets.only(left:1.0,right: 1.0),
                                    child: Container(height:50,width: w,decoration: BoxDecoration(
                                      color: bla,
                                    ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top:5.0),
                                            child: Container(
                                              child: Container(
                                                child: DottedLine(
                                                  direction: Axis.horizontal,
                                                  lineLength: double.infinity,
                                                  lineThickness: 1.0,
                                                  dashLength: 4.0,
                                                  dashColor: Colors.black,
                                                  dashRadius: 0.0,
                                                  dashGapLength: 4.0,
                                                  dashGapColor: Colors.transparent,
                                                  dashGapRadius: 0.0,
                                                ),
                                              ),

                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(left:1.0,right: 1.0),
                                            child: Container(height:40,width: w,decoration: BoxDecoration(
                                              color: bla,),
                                              child: Padding(
                                                padding: const EdgeInsets.only(left:10.0,right: 10.00),
                                                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Text("DeliveryFee ",style: TextStyle(color: Colors.white,),),
                                                        Text(": \u20B950",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 14),),
                                                      ],
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(Icons.location_on,color: Color(0xFFf7c226),),
                                                        Text("5km",style: TextStyle(color: Colors.white,),)
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
                                  SizedBox(height: 20,),
                                  Padding(
                                    padding: const EdgeInsets.only(right:15.0,bottom: 20,left: 15.00),
                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(height:30,width:30,decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xFFe56e70)),child: Icon(Icons.close,color: Colors.white,size: 20,),),
                                            SizedBox(width: 10,),
                                            Container(height:30,width:30,decoration: BoxDecoration(shape: BoxShape.circle,color: Color(0xFF16bd6f)),child: Icon(Icons.check,color: Colors.white,size: 20,),),
                                          ],
                                        ),
                                        Row(mainAxisAlignment: MainAxisAlignment.end,
                                          children: [
                                            Text("View Details",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400),),
                                            SizedBox(width: 3,),
                                            Image.asset("assets/right.png",height: 15,width: 15,color: Color(0xFF3e3e3e),),
                                          ],
                                        ),


                                      ],
                                    ),
                                  )

                                ],
                              ),
                            ),
                          ),

                          Padding(
                            padding: const EdgeInsets.only(left: 29.0, top: 7),
                            child: Container(
                              decoration: BoxDecoration(
                                color: org,
                                borderRadius: BorderRadius.circular(13),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    left: 30.0, right: 30.00, top: 7, bottom: 7),
                                child: Text(
                                  "New Order",
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
