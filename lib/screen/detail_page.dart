import 'package:chocolate/color.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final List allItems;
  final int index;
  const DetailsPage({super.key, required this.allItems, required this.index});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    int price = widget.allItems[widget.index]["price"];
    return Scaffold(
      backgroundColor: widget.allItems[widget.index][Color],
      appBar: AppBar(
        title: Text(widget.allItems[widget.index]["name"]),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network(
                widget.allItems[widget.index]["image"],
              ),
            ),
            Row(
              children: [
                Text("Price: $price"),
                Spacer(),
                Row(
                  children: [
                    IconButton(
                        onPressed: () {
                          setState(() {
                            if (number > 1) {
                              number = number - 1;
                            }
                          });
                        },
                        icon: Icon(Icons.remove)),
                    SizedBox(width: 42, child: Text("$number kg")),
                    IconButton(
                        onPressed: () {
                          setState(() {
                            number = number + 1;
                          });
                        },
                        icon: Icon(Icons.add))
                  ],
                )
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [Text("Total:"), Text("${price * number}")],
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(
                          Icons.shopping_bag,
                          color: kwhite,
                        ),
                        Text(
                          "Add to card  ",
                          style: TextStyle(
                              color: kwhite,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
