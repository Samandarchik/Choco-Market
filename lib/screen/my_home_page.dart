import 'package:chocolate/screen/assarti.dart';
import 'package:chocolate/color.dart';
import 'package:chocolate/screen/face.dart';
import 'package:chocolate/screen/ko_page.dart';
import 'package:chocolate/screen/konti_page.dart';
import 'package:chocolate/screen/nevskiy_page.dart';
import 'package:chocolate/screen/slovanka_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    List<Widget> pages = [KontiPage(), SlovankaPage(), KoPage(), NevskiyPage()];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade700,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Face(),
              ),
            );
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
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/bavgrand.jpg"),
                fit: BoxFit.cover)),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Kayfiyatni Ko'taring...",
                        style: GoogleFonts.pacifico(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 22)),
                  ],
                ),
              ),
              MasonryGridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  gridDelegate:
                      const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => pages[index]));
                      },
                      child: Container(
                        height: size.height * .24,
                        decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                  color: Colors.orange,
                                  spreadRadius: 3,
                                  offset: Offset(
                                    1,
                                    4,
                                  ),
                                  blurRadius: 10)
                            ],
                            color: kwhite,
                            borderRadius: BorderRadius.circular(20)),
                        margin: const EdgeInsets.all(10),
                        child: Image.asset(images[index]),
                      ),
                    );
                  }),
              Container(
                margin: const EdgeInsets.all(12),
                height: 210,
                width: double.infinity,
                decoration: BoxDecoration(boxShadow: const [
                  BoxShadow(
                      color: Colors.black,
                      spreadRadius: 6,
                      offset: Offset(
                        3,
                        8,
                      ),
                      blurRadius: 10)
                ], color: kwhite, borderRadius: BorderRadius.circular(20)),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Assarti()));
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "assets/images/logo6.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

List<String> images = [
  "assets/images/logo0.png",
  "assets/images/logo1.jpeg",
  "assets/images/logo2.jpg",
  "assets/images/logo3.png"
];
