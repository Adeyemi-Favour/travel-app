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
          Stack(
            children: [
              Container(
                width: 374,
                height: 460,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('lib/image168.png'),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(20)),
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
                      Row(
                        children: [
                          Icon(FluentIcons.location_24_regular, color: Color(0xFFCAC8C8),),
                          SizedBox(width: 6,),
                          Text('South, America', style: TextStyle(
                            color: Color(0xFFCAC8C8), fontSize: 17, fontWeight: FontWeight.w400
                          ),)
                        ],
                      )
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
