import 'package:e_cart_ecommerce/consts/consts.dart';
import 'package:e_cart_ecommerce/consts/list.dart';
import 'package:e_cart_ecommerce/sevice/auth_service.dart';
import 'package:e_cart_ecommerce/widget_common/bg_widget.dart';
import 'package:e_cart_ecommerce/widget_common/custom_textfield.dart';
import 'package:e_cart_ecommerce/widget_common/our_button.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formkey = GlobalKey<FormState>();
  bool formStateLoading = false;
  bool ispassword = true;
  FocusNode? passwordfocus;
  FocusNode? retypepasswordfocus;
  TextEditingController emailC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  AuthService auth = AuthService();
  String? token;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              10.heightBox,
              "Login in to $appname"
                  .text
                  .fontFamily(bold)
                  .white
                  .size(18)
                  .make(),
              15.heightBox,
              Form(
                key: formkey,
                child: Column(
                  children: [
                    CustomTextField(
                      controller: emailC,
                      hintText: 'Email...',
                      validate: (v) {
                        if (v!.isEmpty) {
                          return "Email cannot be empty";
                        } else if (!v.contains("@") || !v.contains(".com")) {
                          return "email is badly formated";
                        }

                        return null;
                      },
                    ),
                    CustomTextField(
                      focusNode: passwordfocus,
                      validate: (v) {
                        if (v!.isEmpty) {
                          return "Password cannot be empty";
                        } else if (v.length < 8) {
                          return "Password should have at least 8 characters";
                        }
                        return null;
                      },
                      isPassword: ispassword,
                      controller: passwordC,
                      hintText: 'Password...',
                      icon: IconButton(
                        onPressed: () {
                          setState(() {
                            ispassword = !ispassword;
                          });
                        },
                        icon: ispassword
                            ? Icon(Icons.visibility_off)
                            : Icon(Icons.visibility),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: forgotpassword.text.make(),
                      ),
                    ),
                    5.heightBox,
                    ourButton(
                      color: redColor,
                      title: login,
                      onPress: () {
                        if (formkey.currentState!.validate()) {
                          auth.Login(context, emailC.text, passwordC.text);
                          FocusScope.of(context).unfocus();
                        }
                        // auth.SaredPrefrense(
                        //     context, emailC.text, passwordC.text);
                      },
                      textColor: whiteColor,
                    ).box.width(context.screenWidth - 50).make(),
                    5.heightBox,
                    CreateNewAccount.text.color(fontGrey).make(),
                    5.heightBox,
                    ourButton(
                      color: lightgolden,
                      title: Signup,
                      textColor: redColor,
                      onPress: () {
                        Navigator.pushNamed(context, '/signupPage');
                      },
                    ).box.width(context.screenWidth - 50).make(),
                    10.heightBox,
                    loginwith.text.color(fontGrey).make(),
                    5.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        //print the social logo icon
                        3,
                        (index) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: CircleAvatar(
                            backgroundColor: lightGrey,
                            radius: 25,
                            child: Image.asset(
                              socialIconList[index],
                              width: 30,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
                    .box
                    .white
                    .rounded
                    .padding(EdgeInsets.all(16))
                    .width(context.screenWidth - 70)
                    .shadowSm
                    .make(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
