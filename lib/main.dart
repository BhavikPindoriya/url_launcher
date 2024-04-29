import 'package:e_cart_ecommerce/consts/consts.dart';
import 'package:e_cart_ecommerce/utils/utils.dart';
import 'package:e_cart_ecommerce/views/auth_screen/login_screen.dart';
import 'package:e_cart_ecommerce/views/auth_screen/signup_screen.dart';
import 'package:e_cart_ecommerce/views/details_screen/fifth_page.dart';
import 'package:e_cart_ecommerce/views/details_screen/first_page.dart';
import 'package:e_cart_ecommerce/views/details_screen/fourth_page.dart';
import 'package:e_cart_ecommerce/views/details_screen/second_page.dart';
import 'package:e_cart_ecommerce/views/details_screen/sixth_page.dart';
import 'package:e_cart_ecommerce/views/details_screen/third_page.dart';
import 'package:e_cart_ecommerce/views/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String? token = await Utils.getToken();
  runApp(MyApp(
    token: token,
  ));
}

class MyApp extends StatelessWidget {
  String? token;

  MyApp({
    Key? key,
    required this.token,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appname,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.transparent,
        appBarTheme: AppBarTheme(color: Colors.transparent),
        fontFamily: regular,
      ),
      routes: {
        '/firstPage': (context) => FirstPage(),
        '/secondPage': (context) => SecondPage(),
        '/thirdPage': (context) => ThirdPage(),
        '/fourthPage': (context) => FourthPage(),
        '/fifthPage': (context) => CodingWebsite(),
        '/sixthPage': (context) => Books(),
        '/signupPage': (context) => SignUpScreen()
      },
      home: (token == null) ? LoginScreen() : HomeScreen(),
    );
  }
}
