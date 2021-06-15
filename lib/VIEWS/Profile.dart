// import 'package:deliveryapp/styles.dart';
import 'package:flutter/material.dart';

import '../Styles.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
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
    return Scaffold(
      backgroundColor: Color(0xff1f2025),
      appBar: AppBar(
        backgroundColor: Color(0xff2c2c2c),
        centerTitle: true,
        title: Text(
          "Profile",
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35),
                      bottomRight: Radius.circular(35))),
              height: MediaQuery.of(context).size.height / 6,
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage("assets/images/profile.jpg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Rahul Raj",
                          style: f15,
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Text(
                              "BTM-DRID :",
                              style: f17,
                            ),
                            Text(
                              " 252225",
                              style: f17B,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Row(
                          children: [
                            Text(
                              "Location :",
                              style: f17,
                            ),
                            Text(
                              " Thiruvananthapuram",
                              style: f17,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Container(
                          height: 25,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Color(0xff4ec2e0),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text(
                              "Edit Profile",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[600],
            ),
            InkWell(
              onTap: (){},
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/icons/text-document.png",
                            height: 22,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "My Documents",
                            style: f16w,
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/icons/right-arrow.png",
                        height: 25,
                        color: Colors.white,
                        width: 15,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[600],
            ),
            InkWell(
              onTap: (){},
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/icons/history.png",
                            height: 22,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "History",
                            style: f16w,
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/icons/right-arrow.png",
                        height: 25,
                        color: Colors.white,
                        width: 15,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[600],
            ),
            InkWell(
              onTap: (){},
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/icons/hand.png",
                            height: 22,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Payouts",
                            style: f16w,
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/icons/right-arrow.png",
                        height: 25,
                        color: Colors.white,
                        width: 15,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[600],
            ),
            InkWell(
              onTap: (){},
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/icons/faq.png",
                            height: 22,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "FAQ'S",
                            style: f16w,
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/icons/right-arrow.png",
                        height: 25,
                        color: Colors.white,
                        width: 15,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[600],
            ),
            InkWell(
              onTap: (){},
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/icons/synchronize.png",
                            height: 22,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Change Password",
                            style: f16w,
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/icons/right-arrow.png",
                        height: 25,
                        color: Colors.white,
                        width: 15,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[600],
            ),
            InkWell(
              onTap: (){},
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Image.asset(
                            "assets/icons/turn-off.png",
                            height: 22,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(
                            "Sign Out",
                            style: f16w,
                          ),
                        ],
                      ),
                      Image.asset(
                        "assets/icons/right-arrow.png",
                        height: 25,
                        color: Colors.white,
                        width: 15,
                      )
                    ],
                  ),
                ),
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey[600],
            ),
          ],
        ),
      ),
    );
  }
}