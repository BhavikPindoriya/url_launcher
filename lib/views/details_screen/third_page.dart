import 'package:e_cart_ecommerce/consts/consts.dart';
import 'package:e_cart_ecommerce/consts/list.dart';
import 'package:e_cart_ecommerce/sevice/show_dialog.dart';
import 'package:e_cart_ecommerce/utils/utils.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  const ThirdPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: Text(
          "Competitive Exam",
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
              ShowDialogBox.openDialog(context, 'Competitive Exam');
            },
          ),
          SizedBox(width: 15),
        ],
      ),
      body: Container(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: CompetitiveExamname.length,
          itemBuilder: (context, index) {
            int subtitle = index + 1;
            return Card(
              child: ListTile(
                title: Text(CompetitiveExamname[index]),
                leading: Text(subtitle.toString()),
                trailing: Icon(Icons.favorite),
                onTap: () async {
                  if (index == 0) {
                    Utils.openappwebView(CompetitiveExamnameUrl[0]);
                  } else if (index == 1) {
                    Utils.openappwebView(CompetitiveExamnameUrl[1]);
                  } else if (index == 2) {
                    Utils.openappwebView(CompetitiveExamnameUrl[2]);
                  } else if (index == 3) {
                    Utils.openappwebView(CompetitiveExamnameUrl[3]);
                  } else if (index == 4) {
                    Utils.openappwebView(CompetitiveExamnameUrl[4]);
                  } else if (index == 5) {
                    Utils.openappwebView(CompetitiveExamnameUrl[5]);
                  } else if (index == 6) {
                    Utils.openappwebView(CompetitiveExamnameUrl[6]);
                  } else if (index == 7) {
                    Utils.openappwebView(CompetitiveExamnameUrl[7]);
                  } else if (index == 8) {
                    Utils.openappwebView(CompetitiveExamnameUrl[8]);
                  } else if (index == 9) {
                    Utils.openappwebView(CompetitiveExamnameUrl[9]);
                  } else if (index == 10) {
                    Utils.openappwebView(CompetitiveExamnameUrl[10]);
                  } else if (index == 11) {
                    Utils.openappwebView(CompetitiveExamnameUrl[11]);
                  } else if (index == 12) {
                    Utils.openappwebView(CompetitiveExamnameUrl[12]);
                  } else if (index == 13) {
                    Utils.openappwebView(CompetitiveExamnameUrl[13]);
                  } else if (index == 14) {
                    Utils.openappwebView(CompetitiveExamnameUrl[14]);
                  } else if (index == 15) {
                    Utils.openappwebView(CompetitiveExamnameUrl[15]);
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
