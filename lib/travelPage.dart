import 'dart:ui';

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class travelPage extends StatelessWidget {
  const travelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(
            left: 16, right: 16, top: MediaQuery.of(context).size.height * 0.07
        ),
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
             height: 460,
             child: Stack(
               children: [
                 Container(
                   width: 374,
                   height: 460,
                   decoration: BoxDecoration(
                     image: DecorationImage(
                       image: AssetImage('lib/image168.png'),
                       fit: BoxFit.cover,
                     ),
                     borderRadius: BorderRadius.circular(20),
                     boxShadow: [
                       BoxShadow(
                         color: Colors.grey.withOpacity(0.3),
                         spreadRadius: 2,
                         blurRadius: 7,
                         offset: Offset(0, 3), // changes position of shadow
                       ),
                     ],
                   ),
                 ),
                 Positioned(
                   left: 16,
                   top: 16,
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
                       InkWell(
                         onTap: (){
                           Navigator.pop(context);
                         },
                         child: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white,),
                       )
                     ],
                   ),
                 ),
                 Positioned(
                   right: 16,
                   top: 16,
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
                       Icon(Icons.bookmark_border_rounded, color: Colors.white,)
                     ],
                   ),
                 ),
                 Positioned(
                   left: 16,
                   bottom: 16,
                   child: Container(
                     width: 342,
                     padding: EdgeInsets.all(16),
                     decoration: BoxDecoration(
                         color: Colors.black.withOpacity(0.4),
                         borderRadius: BorderRadius.all(Radius.circular(10))
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text(
                               'Andes Mountain',
                               style: TextStyle(
                                   color: Colors.white,
                                   fontSize: 24,
                                   fontWeight: FontWeight.w500
                               ),
                             ),
                             Text(
                               'Price',
                               style: TextStyle(
                                   fontWeight: FontWeight.w400,fontSize: 17,
                                   color: Color(0xFFCAC8C8)),
                             )
                           ],
                         ),
                         SizedBox(height: 11,),
                         Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Row(
                               children: [
                                 Icon(FluentIcons.location_24_regular, color: Color(0xFFCAC8C8),),
                                 SizedBox(width: 6,),
                                 Text('South, America', style: TextStyle(
                                     color: Color(0xFFCAC8C8), fontSize: 17, fontWeight: FontWeight.w400
                                 ),),
                               ],
                             ),
                             Row(
                               crossAxisAlignment: CrossAxisAlignment.center,
                               children: [
                                 Text(
                                   '\$',
                                   style: TextStyle(
                                       color: Color(0xFFCAC8C8),
                                       fontSize: 17
                                   ),
                                 ),
                                 Text(
                                   '230',
                                   style: TextStyle(
                                       fontWeight: FontWeight.w500,
                                       fontSize: 24,
                                       color: Colors.white),
                                 )
                               ],
                             )
                           ],
                         )
                       ],
                     ),
                   ),
                 ),
               ],
             ),
            ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Overview',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      width: 32,
                    ),
                    Text(
                      'Details',
                      style: TextStyle(
                          color: Color(0xFF1B1B1B),
                          fontWeight: FontWeight.w400,
                          fontSize: 17),
                    )
                  ],
                ),
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 34,
                          height: 34,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10),),
                            color: Colors.grey.shade300
                          ),
                          child: Icon(FluentIcons.clock_24_filled),
                        ),
                        SizedBox(width: 6,),
                        Text(
                          '8 hours',
                          style: TextStyle(
                            color: Color(0xFF1B1B1B),
                            fontSize: 17,
                            fontWeight: FontWeight.w400
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 34,
                          height: 34,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10),),
                              color: Colors.grey.shade300
                          ),
                          child: Icon(FluentIcons.cloud_24_filled),
                        ),
                        SizedBox(width: 6,),
                        Text(
                          '16℃',
                          style: TextStyle(
                              color: Color(0xFF1B1B1B),
                              fontSize: 17,
                              fontWeight: FontWeight.w400
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 34,
                          height: 34,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10),),
                              color: Colors.grey.shade300
                          ),
                          child: Icon(FluentIcons.star_24_filled),
                        ),
                        SizedBox(width: 6,),
                        Text(
                          '4.5',
                          style: TextStyle(
                              color: Color(0xFF1B1B1B),
                              fontSize: 17,
                              fontWeight: FontWeight.w400
                          ),
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(height: 16,),
                Container(
                    child: Text(
                  'This vast mountain range is renowned for its remarkable diversity in terms of topography and climate. It features towering peaks, active volcanoes, deep canyons, expansive plateaus, and lush valleys. The Andes are also home to ',
                  style: TextStyle(fontSize: 17),
                )),
                SizedBox(height: 16,),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Colors.black),
                    padding: WidgetStateProperty.all(EdgeInsets.all(20))
                  ),
                  onPressed: null,
                  child: Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Book Now',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(width: 20,),
                      Icon(FluentIcons.send_24_regular, color: Colors.white,)
                    ],
                  ),
                ),
                SizedBox(height: 16,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
