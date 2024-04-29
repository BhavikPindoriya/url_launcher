import 'package:e_cart_ecommerce/consts/consts.dart';
import 'package:e_cart_ecommerce/consts/list.dart';
import 'package:e_cart_ecommerce/sevice/show_dialog.dart';
import 'package:e_cart_ecommerce/utils/utils.dart';
import 'package:flutter/material.dart';

class Books extends StatelessWidget {
  const Books({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: Text(
          "Books",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: redColor,
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          Icon(Icons.menu),
          SizedBox(width: 25),
          InkWell(
            child: Icon(Icons.add),
            onTap: () {
              ShowDialogBox.openDialog(context, 'Books');
            },
          ),
          SizedBox(width: 15),
        ],
      ),
      body: Container(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: BooksName.length,
          itemBuilder: (context, index) {
            int subtitle = index + 1;
            return Card(
              child: ListTile(
                title: Text(BooksName[index]),
                leading: Text(subtitle.toString()),
                trailing: Icon(Icons.favorite),
                onTap: () async {
                  if (index == 0) {
                    Utils.openappwebView(BooksNameUrl[0]);
                  } else if (index == 1) {
                    Utils.openappwebView(BooksNameUrl[1]);
                  } else if (index == 2) {
                    Utils.openappwebView(BooksNameUrl[2]);
                  } else if (index == 3) {
                    Utils.openappwebView(BooksNameUrl[3]);
                  } else if (index == 4) {
                    Utils.openappwebView(BooksNameUrl[4]);
                  } else if (index == 5) {
                    Utils.openappwebView(BooksNameUrl[5]);
                  } else if (index == 6) {
                    Utils.openappwebView(BooksNameUrl[6]);
                  } else if (index == 7) {
                    Utils.openappwebView(BooksNameUrl[7]);
                  } else if (index == 8) {
                    Utils.openappwebView(BooksNameUrl[8]);
                  } else if (index == 9) {
                    Utils.openappwebView(BooksNameUrl[9]);
                  } else if (index == 10) {
                    Utils.openappwebView(BooksNameUrl[10]);
                  } else if (index == 11) {
                    Utils.openappwebView(BooksNameUrl[11]);
                  } else if (index == 12) {
                    Utils.openappwebView(BooksNameUrl[12]);
                  } else if (index == 13) {
                    Utils.openappwebView(BooksNameUrl[13]);
                  } else if (index == 14) {
                    Utils.openappwebView(BooksNameUrl[14]);
                  } else if (index == 15) {
                    Utils.openappwebView(BooksNameUrl[15]);
                  }
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
