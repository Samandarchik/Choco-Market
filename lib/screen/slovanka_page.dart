import 'package:chocolate/data/product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// SlovankaPage sahifasi
class SlovankaPage extends StatelessWidget {
  const SlovankaPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Barcha productlar va ularning detallarini ro'yxatga olish
    final allItems = productsList.expand((product) => product.detail).toList();
    print(allItems);
    return Scaffold(
      body: MasonryGridView.builder(
        gridDelegate:
            SliverSimpleGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: allItems.length, // Barcha itemlarning uzunligi
        itemBuilder: (context, index) {
          final item = allItems[index];

          return Container(
            margin: EdgeInsets.all(10),
            color: Colors.red,
            width: double.infinity,
            child: Column(
              children: [
                Text('Product Name: ${item['name']}'),
                Image.network(item['image']),
                Text('Price: ${item['price']}'),
              ],
            ),
          );
        },
      ),
    );
  }
}
