import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatDecoration extends StatelessWidget {
  const ChatDecoration({
    super.key,
    required this.isActive,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 10),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
              color: isActive ? Colors.grey.shade800 : Colors.amber,
              borderRadius: BorderRadius.circular(10)),
          height: 60,
          // width: 300,
          width: MediaQuery.of(context).size.width / 1.1,

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(color: Colors.white)),
                    child: Icon(Icons.message),
                  ),
                  const SizedBox(
                    width: 40,
                  ),
                  Text(
                    "Chat",
                    style: GoogleFonts.acme(
                        fontSize: 25, color: Colors.grey.shade100),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20),
                child: Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(6),
                      border: Border.all(color: Colors.white)),
                  child: const Icon(
                    Icons.notification_add,
                    color: Colors.teal,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
