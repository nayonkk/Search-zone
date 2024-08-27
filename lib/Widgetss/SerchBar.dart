import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ui_ux_8/Widgetss/Drawer.dart';


class SerchingBar_Details extends StatelessWidget {
  const SerchingBar_Details({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector( onTap: () {
           
   Navigator.push(context, MaterialPageRoute(builder: (context)=>Drawer_box()));


          },
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade800,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.white24, width: 3)),
              height: 50,
              width: 50,
              child: const Icon(
                Icons.menu,
                size: 25,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Discover a new path",
            style: GoogleFonts.acme(
              fontSize: 27,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: TextFormField(
              cursorColor: Colors.white,
              decoration: const InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  hintText: "Serching...",
                  hoverColor: Colors.teal,
                  hintStyle: TextStyle(color: Colors.grey),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                  )),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Text(
            "For you",
            style: GoogleFonts.acme(
              fontSize: 25,
            ),
          ),
        ],
      ),
    );
  }
}
