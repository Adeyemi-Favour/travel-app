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
                        
                      },
                      child: Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white,),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
