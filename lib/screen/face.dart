import 'package:chocolate/screen/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Face extends StatelessWidget {
  const Face({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          image: DecorationImage(
            image: AssetImage('assets/images/face.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
            child: ElevatedButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => MyHomePage()));
          },
          style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.brown),
              iconSize: WidgetStatePropertyAll(39)),
          child: Text(
            "Go Started...",
            style: GoogleFonts.aDLaMDisplay(
                color: Colors.white, fontSize: 35, fontWeight: FontWeight.bold),
          ),
        )),
      ),
    );
  }
}
