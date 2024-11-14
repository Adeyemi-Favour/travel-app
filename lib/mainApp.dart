import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'filterButtons.dart';

class mainApp extends StatelessWidget {
  const mainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue, Colors.blue.shade900],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => homePage()));
                    },
                    child: Text(
                      "Travel",
                      style: GoogleFonts.lobster(
                        textStyle: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    )),
                SizedBox(
                  width: 4,
                ),
                Icon(
                  Icons.travel_explore,
                  color: Colors.white,
                  size: 30,
                ),
              ],
            ),
            Text(
              "Find your dream destination with us",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.access_time_rounded), label: 'History')
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
                      Container(
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
                      Positioned(
                        width: 270,
                        bottom: 0,
                        // // Adjust this value to place the overlay where you want
                        // left: 16,
                        // right: 16,
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
                                    style: TextStyle(color: Colors.grey, fontSize: 14),
                                  ),
                                ],
                              ),
                              SizedBox(height: 13,),
                              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(FluentIcons.location_24_regular, color: Colors.grey,),
                                      SizedBox(width: 10,),
                                      Text('Tokyo, Japan', style: TextStyle(color: Colors.grey ),)
                                    ],),
                                  Row(
                                    children: [
                                      Icon(FluentIcons.star_24_regular, color: Colors.grey,),
                                      SizedBox(width: 5,),
                                      Text('4.8', style: TextStyle(color: Colors.grey ),)
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
