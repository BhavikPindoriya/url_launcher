import 'package:e_cart_ecommerce/consts/consts.dart';
import 'package:e_cart_ecommerce/consts/list.dart';
import 'package:e_cart_ecommerce/sevice/show_dialog.dart';
import 'package:e_cart_ecommerce/utils/utils.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: Text(
          "Course",
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
              ShowDialogBox.openDialog(context, 'Course');
            },
          ),
          SizedBox(width: 15),
        ],
      ),
      body: Container(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: Coursename.length,
          itemBuilder: (context, index) {
            int subtitle = index + 1;
            return Card(
              child: ListTile(
                leading: Text(subtitle.toString()),
                title: Text(Coursename[index]),
                trailing: Icon(Icons.favorite),
                onTap: () async {
                  if (index == 0) {
                    Utils.openappwebView(CoursenameUrl[0]);
                  } else if (index == 1) {
                    Utils.openappwebView(CoursenameUrl[1]);
                  } else if (index == 2) {
                    Utils.openappwebView(CoursenameUrl[2]);
                  } else if (index == 3) {
                    Utils.openappwebView(CoursenameUrl[3]);
                  } else if (index == 4) {
                    Utils.openappwebView(CoursenameUrl[4]);
                  } else if (index == 5) {
                    Utils.openappwebView(CoursenameUrl[5]);
                  } else if (index == 6) {
                    Utils.openappwebView(CoursenameUrl[6]);
                  } else if (index == 7) {
                    Utils.openappwebView(CoursenameUrl[7]);
                  } else if (index == 8) {
                    Utils.openappwebView(CoursenameUrl[8]);
                  } else if (index == 9) {
                    Utils.openappwebView(CoursenameUrl[9]);
                  } else if (index == 10) {
                    Utils.openappwebView(CoursenameUrl[10]);
                  } else if (index == 11) {
                    Utils.openappwebView(CoursenameUrl[11]);
                  } else if (index == 12) {
                    Utils.openappwebView(CoursenameUrl[12]);
                  } else if (index == 13) {
                    Utils.openappwebView(CoursenameUrl[13]);
                  } else if (index == 14) {
                    Utils.openappwebView(CoursenameUrl[14]);
                  } else if (index == 15) {
                    Utils.openappwebView(CoursenameUrl[15]);
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
