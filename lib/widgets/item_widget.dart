import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:matcher/matcher.dart';

class ItemWidget extends StatelessWidget {

final Item item;

  const ItemWidget({super.key, required this.item}): assert(item != null);


  @override
  Widget build(BuildContext context) {
    
    return Container(
      child: Card(
  
        // semanticContainer: true,
        child: ListTile(
          shape: StadiumBorder(),
          onTap: (){
           print(item.name);
          },
          title: Text(item.name,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.deepPurple
          ),),
          subtitle: Text(item.desc,
          style:TextStyle(
            fontSize: 13,
            fontWeight: FontWeight.w300,
            color: Colors.black87
          ) ,),
          trailing: Text("\$${item.price}",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Colors.deepPurple
          ),),
          leading: Image.network(item.image) 
        ),
      ),
    );
  }
}