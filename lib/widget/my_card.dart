import 'package:chocolate/color.dart';
import 'package:chocolate/screen/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,
    required this.allItems,
  });

  final List<Map<dynamic, dynamic>> allItems;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/bavgrand.jpg"),
              fit: BoxFit.cover)),
      child: MasonryGridView.builder(
        gridDelegate:
            SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: allItems.length, // Barcha itemlarning uzunligi
        itemBuilder: (context, index) {
          final item = allItems[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          DetailsPage(allItems: allItems, index: index)));
            },
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: kwhite, borderRadius: BorderRadius.circular(20)),
              width: double.infinity,
              child: Column(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(item['image'])),
                  Text(
                    item['name'],
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
