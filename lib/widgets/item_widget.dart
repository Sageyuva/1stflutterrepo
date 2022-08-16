import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:matcher/matcher.dart';

class ItemWidget extends StatelessWidget {

final Item item;

  const ItemWidget({super.key, required this.item}): assert(item != null);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Image.network(item.image) 
      ),
    );
  }
}