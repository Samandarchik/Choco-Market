class Product {
  final List<Map<String, dynamic>> detail;
  Product({required this.detail});
}

List<Product> productsList = [
  Product(detail: [
    {
      'price': 20000,
      "name": "Mone",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZMYDSxkQVTYkm7gwESzmRzASosvcYQoQ2Qw&s",
    },
    {
      'price': 2,
      "name": "Product2",
      "image":
          "https://adore-chocolate.com/wp-content/uploads/2023/06/pure-lova-shokoladli-2.png",
    },
    {
      'price': 3,
      "name": "Product3",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQMrAxVcxuhqIBxvhyIkmHNlkM0KhnSvw9B1g&s",
    },
    {
      'price': 4,
      "name": "Product4",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZMYDSxkQVTYkm7gwESzmRzASosvcYQoQ2Qw&s",
    },
    {
      'price': 5,
      "name": "Product5",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZMYDSxkQVTYkm7gwESzmRzASosvcYQoQ2Qw&s",
    },
  ]),
  Product(detail: [
    {
      'price': 5,
      "name": "Product5",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSZMYDSxkQVTYkm7gwESzmRzASosvcYQoQ2Qw&s",
    },
  ]),
  Product(detail: []),
  Product(detail: []),
];
