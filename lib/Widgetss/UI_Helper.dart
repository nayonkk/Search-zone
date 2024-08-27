import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UI_Helper {
  static customContainer(
      String car, String time, String Designer, String hours) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade700,
            borderRadius: BorderRadius.circular(10)),
        height: 140,
        width: 220,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade800,
                        borderRadius: BorderRadius.circular(10)),
                    height: 40,
                    width: 60,
                    child: Center(
                        child: Text(
                      car,
                      style: GoogleFonts.acme(
                        fontSize: 16,
                      ),
                    )),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.shade900,
                        borderRadius: BorderRadius.circular(10)),
                    height: 40,
                    width: 100,
                    child: Center(
                      child: Text(
                        time,
                        style: GoogleFonts.acme(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 6,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Text(
                Designer,
                style: GoogleFonts.acme(
                  fontSize: 19,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Text(
                hours,
                style:
                    GoogleFonts.acme(fontSize: 17, color: Colors.grey.shade400),
              ),
            ),
          ],
        ),
      ),
    );
  }

  static CustomListView(String Designer, String apple, Icon logoss) {
    return ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return Card(
              color: Colors.blueGrey.shade800,
              child: ListTile(
                trailing:const Text(
                  "\$00/h",
                  style: TextStyle(fontSize: 19),
                ),
                leading: logoss,
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      Designer,
                      style: GoogleFonts.acme(
                        fontSize: 18,
                      ),
                    ),
                    Text(apple),
                  ],
                ),
              ));
        });
  }





}
