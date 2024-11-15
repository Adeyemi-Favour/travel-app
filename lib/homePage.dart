import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:travelapp/travelPage.dart';

import 'filterButtons.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey.shade400,
        items: [
          BottomNavigationBarItem(
              icon: Column(
                children: [
                  Icon(FluentIcons.home_24_filled),
                  Container(
                    width: 5,
                    height: 5,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        )),
                  )
                ],
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_time_rounded), label: 'History'),
          BottomNavigationBarItem(
              icon: Icon(FluentIcons.heart_24_regular), label: 'Favorite'),
          BottomNavigationBarItem(
              icon: Icon(FluentIcons.person_24_regular),
              label: 'Profile')
        ],
      ),
      body: ListView(
          padding: EdgeInsets.only(
              left: 16, right: 16, top: MediaQuery.of(context).size.height * 0.07
          ),
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text("Hi, David",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w500,
                                color: Colors.black)),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "👋",
                          style: TextStyle(fontSize: 30),
                        ),
                      ],
                    ),
                    Text(
                      "Explore the world",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                          'https://picsum.photos/300/300',
                        ),
                        fit: BoxFit.cover),
                    color: Colors.black,
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                ),
              ],
            ),
            SizedBox(height: 24,),
            TextField(
              keyboardType: TextInputType.text,
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  hintText: "Search places",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.grey)
                  ),
                  suffixIcon: Container(
                    padding: EdgeInsets.only(right: 16),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(FluentIcons.divider_tall_24_regular,),
                        SizedBox(width: 8,),
                        Icon(FluentIcons.filter_24_regular,)
                      ],
                    ),
                  )),
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular Places",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                Text(
                  "View all",
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.grey),
                )
              ],
            ),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 50,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(width: 8), // Horizontal spacing between items
                itemCount: 3, // Number of filter buttons
                itemBuilder: (context, index) {
                  // Define button details based on index
                  String placeCategory;
                  Color buttonColor;

                  if (index == 0) {
                    placeCategory = "Most Viewed";
                    buttonColor = Colors.black;
                  } else if (index == 1) {
                    placeCategory = "Nearby";
                    buttonColor = Colors.grey;
                  } else {
                    placeCategory = "Latest";
                    buttonColor = Colors.grey;
                  }

                  return filterButtons(
                    placeCategory: placeCategory,
                    buttonColor: buttonColor,
                  );
                },
              ),
            ),

            SizedBox(
              height: 38,
            ),

            Container(
              height: 405,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) => SizedBox(width: 20,),
                itemCount: 3,
                itemBuilder: (context, index){
                  return  Stack(
                    children: [
                      InkWell(
                        onTap: ()
                        {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => travelPage()));
                        },
                        child: Container(
                          width: 270,
                          height: 405,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('lib/image168.png'),
                              fit: BoxFit.cover,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 14,
                        top: 14,
                        child: Stack(alignment: Alignment.center,
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                  color: Colors.black.withOpacity(0.4),
                                  borderRadius: BorderRadius.all(Radius.circular(50))
                              ),
                            ),
                            Icon(FluentIcons.heart_24_regular, color: Colors.white,)
                          ],
                        ),
                      ),
                      Positioned(
                        width: 270,
                        bottom: 0,
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.7),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Mount Fuji',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    'Tokyo',
                                    style: TextStyle(color: Color(0xFFCAC8C8), fontSize: 14),
                                  ),
                                ],
                              ),
                              SizedBox(height: 13,),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(FluentIcons.location_24_regular, color: Color(0xFFCAC8C8),),
                                      SizedBox(width: 10,),
                                      Text('Tokyo, Japan', style: TextStyle(color: Color(0xFFCAC8C8) ),)
                                    ],),
                                  Row(
                                    children: [
                                      Icon(FluentIcons.star_24_regular, color: Color(0xFFCAC8C8),),
                                      SizedBox(width: 5,),
                                      Text('4.8', style: TextStyle(color: Color(0xFFCAC8C8) ),)
                                    ],
                                  ),],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },),
            ),
          ]),
    );
  }
}