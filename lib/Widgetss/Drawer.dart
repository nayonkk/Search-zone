import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_ux_8/Widgetss/Drawer_Box_decoration.dart';

class Drawer_box extends StatefulWidget {
  const Drawer_box({super.key});

  @override
  State<Drawer_box> createState() => _Drawer_boxState();
}

class _Drawer_boxState extends State<Drawer_box> {
  bool isActive = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Container(
        height: double.infinity,
        width: MediaQuery.of(context).size.height / 2,
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: GestureDetector(onTap: () {
                 Navigator.pop(context);
                },
                  child: Row(   
                    mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                    children: [  
                      Container(  alignment: Alignment.center,
                          height: 30,width: 100,
                        decoration: BoxDecoration( color: Colors.grey.shade800,    borderRadius: BorderRadius.circular(10)),
                        
                        
                        
                        child: Row(children: [   
                  Icon(Icons.arrow_back_ios_new),
                   Text(
                      "Back",
                      style: GoogleFonts.acme(
                        letterSpacing: 3,
                        fontSize: 27,
                      ),
                    ),
                
                      ],)    ,)
                    
                              
                              
                  ],),
                ),
              ),


              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage("assets/images/cat.jpg"),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Text(
                    "Nayon kormokar",
                    style: GoogleFonts.acme(
                      letterSpacing: 3,
                      fontSize: 27,
                    ),
                  ),
                  Text(
                    "Flutter Developer",
                    style: GoogleFonts.acme(
                        fontSize: 20, color: Colors.grey.shade400),
                  ),
                ],
              ),
           const   Column(
                children: [
                   SizedBox(
                    height: 30,
                  ),
                 ChatDecoration(isActive: false),
                ChatDecoration(isActive: true),
                ChatDecoration(isActive: false),
                  ChatDecoration(isActive: true),
                ChatDecoration(isActive: true),
                ChatDecoration(isActive: false),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
