import 'dart:convert';

import 'package:e_cart_ecommerce/Remote/api_constant.dart';
import 'package:e_cart_ecommerce/Remote/api_endpoint.dart';
import 'package:e_cart_ecommerce/consts/consts.dart';
import 'package:e_cart_ecommerce/utils/utils.dart';
import 'package:e_cart_ecommerce/views/auth_screen/login_screen.dart';
import 'package:e_cart_ecommerce/views/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthService {
  AuthService();

  Future<void> Login(
      BuildContext context, String email, String password) async {
    try {
      final Map<String, String> body = {
        'email': email,
        'password': password,
      };

      final http.Response response = await http.post(
        Uri.parse(ApiConstatnt.mainURL + ApiEndPont.login),
        headers: <String, String>{
          'Accept': 'application/json',
        },
        body: body,
      );
      //Vx.log(json.decode(response.body)['error']['mobile'][0]);

      print(body);
      //var res = RegisterModel.fromJson(json.decode(response.body));

      // Vx.log(json.decode(response.body)['user']['email'][0]);
      // Vx.log(res);

      var test = json.decode(response.body);

      Vx.log(test);

      if (test['status'] == "401") {
        final dynamic data = json.decode(response.body);

        if (data['message'] != null) {
          VxToast.show(context, msg: data['message'].toString());
          //await Future.delayed(Duration(seconds: 3));
        }
      } else if (test['status'] == "200") {
        VxToast.show(context,
            msg: test['user']['name'].toString()); // this is username print

        // VxToast.show(context, msg: 'Login successful');

//----------------------------------------- shared prefrense----------

        Utils.setToken(test['token'].toString());
        Utils.setname(test['user']['name'].toString());
        Utils.setemail(test['user']['email'].toString());
        Utils.setmobile(test['user']['mobile'].toString());

        String? emaill = await Utils.getemail();
        String? namee = await Utils.getename();
        String? mobilee = await Utils.getmobile();

        print('Set Token sucssesfullllllllll');
        print(emaill);
        print(namee);
        print(mobilee);

        print('Set Token sucssesfull');
//---------------------------------------------------------------------
        await Future.delayed(Duration(seconds: 3));
        // Navigator.pushNamed(context, '/homepage');
        Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) => HomeScreen(),
            ),
            (route) => false);
      } else {
        throw Exception('Failed the Registration');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

  Future<void> signUp(BuildContext context, String name, String email,
      String mobile, String password) async {
    try {
      final Map<String, String> body = {
        'name': name,
        'email': email,
        'mobile': mobile,
        'password': password,
      };

      final http.Response response = await http.post(
        Uri.parse(ApiConstatnt.mainURL + ApiEndPont.register),
        headers: <String, String>{
          'Accept': 'application/json',
        },
        body: body,
      );
      //Vx.log(json.decode(response.body)['error']['mobile'][0]);

      print(body);
      // var res = RegisterModel.fromJson(json.decode(response.body));

      // Vx.log(json.decode(response.body)['user']['email'][0]);
      // Vx.log(res);

      var test = json.decode(response.body);

      Vx.log(test['error']);

      if (test['status'] == "401") {
        final dynamic data = json.decode(response.body);

        if (data['error'] != null) {
          if (data['error']['email'] != null) {
            VxToast.show(context, msg: data['error']['email'][0].toString());
            await Future.delayed(Duration(seconds: 3));
          }

          if (data['error']['mobile'] != null) {
            VxToast.show(context, msg: data['error']['mobile'][0].toString());
          }
        } else {
          print("Registration successful");
          VxToast.show(context, msg: data['message'].toString());
        }
      } else if (test['status'] == "200") {
        VxToast.show(context, msg: test['message'].toString());
        // Navigator.pushNamed(context, '/loginPage');

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LoginScreen(),
          ),
        );
      } else {
        throw Exception('Failed the Registration');
      }
    } catch (e) {
      print('Error: $e');
    }
  }
}
