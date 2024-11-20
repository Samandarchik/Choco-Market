import 'package:chocolate/color.dart';
import 'package:chocolate/data/product.dart';

import 'package:chocolate/widget/my_card.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// KontiPage sahifasi
class KontiPage extends StatelessWidget {
  const KontiPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Barcha productlar va ularning detallarini ro'yxatga olish
    final allItems = productsList.expand((product) => product.detail).toList();
    return StreamBuilder(
        stream: FirebaseFirestore.instance.collection("product").snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.active) {}
          return Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.brown.shade700,
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  size: 24,
                  color: kwhite,
                ),
              ),
              title: Text(
                'Chocolateies...',
                style: GoogleFonts.pacifico(
                  textStyle: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w200,
                    color: Colors.white,
                  ),
                ),
              ),
              actions: [
                IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 28,
                      color: kwhite,
                    ),
                    onPressed: () {}),
                IconButton(
                    icon: Icon(
                      Icons.notifications,
                      size: 24,
                      color: kwhite,
                    ),
                    onPressed: () {}),
              ],
            ),
            body: MyCard(allItems: allItems),
          );
        });
  }
}
