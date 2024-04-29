import 'package:e_cart_ecommerce/consts/consts.dart';
import 'package:flutter/material.dart';

class ShowDialogBox {
  ShowDialogBox();

  static Future openDialog(context, String name) => showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Add $name'),
            content: Container(
              width: MediaQuery.of(context).size.width *
                  0.8, // adjust the width as needed
              child: Column(
                mainAxisSize: MainAxisSize.min, // Column mainAxisSize
                children: [
                  TextField(
                    decoration: InputDecoration(hintText: '$name Name:-'),
                  ),
                  10.heightBox,
                  TextField(
                    decoration: InputDecoration(hintText: '$name URL:-'),
                  ),
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('CANCEL'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('ACCEPT'),
              )
            ],
          );
        },
      );
}
