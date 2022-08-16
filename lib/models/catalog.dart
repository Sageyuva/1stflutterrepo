import 'package:flutter/material.dart';

class CatalogModel {
  static final items = [
    Item(
        id: 1,
        name: "iPhone 12 Pro",
        desc: "Apple iPhone 12th generation",
        price: 999,
        color: "#33505a",
        image:
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc"),
  Item(id: 2,
   name: "Poco x4 pro",
    desc: "Poco x4 pro powered by Qualcomm snapdragon 695 5g processor",
     price: 20000,
      color: "#33505a", 
      image:
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ1OlcdbRMFGJGxpLD8hZPZgObyA0gl8aT21w&usqp=CAU")
  ];

}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item({required this.id, required this.name, required this.desc, required this.price, required this.color, required this.image});
}