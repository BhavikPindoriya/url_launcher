// import 'package:e_cart_ecommerce/consts/consts.dart';
// import 'package:e_cart_ecommerce/consts/list.dart';
// import 'package:e_cart_ecommerce/utils/utils.dart';
// import 'package:flutter/material.dart';

// class FirstPage extends StatelessWidget {
//   const FirstPage({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: whiteColor,
//       appBar: AppBar(
//         title: Text(
//           "First Page",
//           style: TextStyle(color: Colors.white),
//         ),
//         backgroundColor: redColor,
//         iconTheme: IconThemeData(color: Colors.white),
//         actions: [
//           Icon(Icons.menu),
//           SizedBox(width: 25),
//           Icon(Icons.add),
//           SizedBox(width: 15),
//         ],
//       ),
//       body: Container(
//         child: ListView.builder(
//           shrinkWrap: true,
//           itemCount: detailname.length,
//           itemBuilder: (context, index) {
//             int subtitle = index + 1;
//             return Card(
//               child: ListTile(
//                 title: Text(detailname[index]),
//                 subtitle: Text('$subtitle'),
//                 trailing: Icon(Icons.favorite),
//                 onTap: () async {
//                   if (index == 0) {
//                     showDialog(
//                       context: context,
//                       builder: (context) {
//                         return FutureBuilder(
//                           future: Utils.openappwebView(
//                               'https://indusuni.ac.in/home.php'),
//                           builder: (BuildContext context,
//                               AsyncSnapshot<void> snapshot) {
//                             if (snapshot.connectionState ==
//                                 ConnectionState.waiting) {
//                               return Container();
//                             } else {
//                               return Center(
//                                 child: CircularProgressIndicator(
//                                   color: redColor,
//                                   backgroundColor: golden,
//                                 ),
//                               );
//                             }
//                           },
//                         );
//                       },
//                     );
//                   } else if (index == 1) {
//                     // Handle navigation for index 1
//                   } else if (index == 2) {
//                     // Handle navigation for index 2
//                   }
//                 },
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
