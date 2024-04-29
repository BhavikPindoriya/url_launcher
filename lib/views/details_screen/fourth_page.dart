import 'package:e_cart_ecommerce/consts/consts.dart';
import 'package:e_cart_ecommerce/consts/list.dart';
import 'package:e_cart_ecommerce/sevice/show_dialog.dart';
import 'package:e_cart_ecommerce/utils/utils.dart';
import 'package:flutter/material.dart';

class FourthPage extends StatelessWidget {
  const FourthPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: Text(
          "Quiz",
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
              ShowDialogBox.openDialog(context, 'Quiz');
            },
          ),
          SizedBox(width: 15),
        ],
      ),
      body: Container(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: Quizname.length,
          itemBuilder: (context, index) {
            int subtitle = index + 1;
            return Card(
              child: ListTile(
                title: Text(Quizname[index]),
                leading: Text(subtitle.toString()),
                trailing: Icon(Icons.favorite),
                onTap: () async {
                  if (index == 0) {
                    Utils.openappwebView(QuiznameUrl[0]);
                  } else if (index == 1) {
                    Utils.openappwebView(QuiznameUrl[1]);
                  } else if (index == 2) {
                    Utils.openappwebView(QuiznameUrl[2]);
                  } else if (index == 3) {
                    Utils.openappwebView(QuiznameUrl[3]);
                  } else if (index == 4) {
                    Utils.openappwebView(QuiznameUrl[4]);
                  } else if (index == 5) {
                    Utils.openappwebView(QuiznameUrl[5]);
                  } else if (index == 6) {
                    Utils.openappwebView(QuiznameUrl[6]);
                  } else if (index == 7) {
                    Utils.openappwebView(QuiznameUrl[7]);
                  } else if (index == 8) {
                    Utils.openappwebView(QuiznameUrl[8]);
                  } else if (index == 9) {
                    Utils.openappwebView(QuiznameUrl[9]);
                  } else if (index == 10) {
                    Utils.openappwebView(QuiznameUrl[10]);
                  } else if (index == 11) {
                    Utils.openappwebView(QuiznameUrl[11]);
                  } else if (index == 12) {
                    Utils.openappwebView(QuiznameUrl[12]);
                  } else if (index == 13) {
                    Utils.openappwebView(QuiznameUrl[13]);
                  } else if (index == 14) {
                    Utils.openappwebView(QuiznameUrl[14]);
                  } else if (index == 15) {
                    Utils.openappwebView(QuiznameUrl[15]);
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
