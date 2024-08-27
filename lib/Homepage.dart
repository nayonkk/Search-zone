import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_ux_8/Widgetss/Designer.dart';
import 'package:ui_ux_8/Widgetss/UI_Helper.dart';

import 'Widgetss/SerchBar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
    

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 70,
            ),
            const SerchingBar_Details(),
            const SizedBox(
              height: 30,
            ),
            Designer_Details(),
            // UI_Helper.CustomListView(),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                "Recently Added",
                style: GoogleFonts.acme(
                  fontSize: 21,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),

            Container( 
              color: Colors.grey.shade900,
              height: 300,
              child: UI_Helper.CustomListView("UI/UX Designer", "Apple", Icon(Icons.apple_outlined,size: 30,)) 
              
              
            
            )
          // UI_Helper.CustomListView("UI/UX Designer", "apple", Icon(Icons.apple_outlined,size: 30,))




          ],
        ),
      ),
    );
  }
}
