import 'package:e_cart_ecommerce/consts/consts.dart';
import 'package:e_cart_ecommerce/sevice/auth_service.dart';
import 'package:e_cart_ecommerce/widget_common/bg_widget.dart';
import 'package:e_cart_ecommerce/widget_common/custom_textfield.dart';
import 'package:e_cart_ecommerce/widget_common/our_button.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameC = TextEditingController();
  TextEditingController emailC = TextEditingController();
  TextEditingController mobileC = TextEditingController();
  TextEditingController passwordC = TextEditingController();
  final formkey = GlobalKey<FormState>();
  bool ispassword = true;
  bool isretypepassword = true;
  bool formStateLoading = false;
  bool isCheck = true;
  Map responseBody = {};
  FocusNode? passwordfocus;
  AuthService auth = AuthService();

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
            "Join the $appname".text.fontFamily(bold).white.size(18).make(),
            15.heightBox,
            Form(
              key: formkey,
              child: Column(
                children: [
                  CustomTextField(
                    validate: (v) {
                      if (v!.isEmpty) {
                        return "Name cannot be empty";
                      }
                      return null;
                    },
                    inputAction: TextInputAction.next,
                    controller: nameC,
                    hintText: 'Name...',
                    icon: Icon(Icons.account_box_sharp),
                  ),
                  CustomTextField(
                    validate: (v) {
                      if (v!.isEmpty) {
                        return "Email cannot be empty";
                      } else if (!v.contains("@") || !v.contains(".com")) {
                        return "email is badly formated";
                      }

                      return null;
                    },
                    inputAction: TextInputAction.next,
                    controller: emailC,
                    hintText: 'Email...',
                    icon: Icon(Icons.email),
                  ),
                  CustomTextField(
                    number: 10,
                    validate: (v) {
                      if (v!.isEmpty) {
                        return "Mobile number cannot be empty";
                      } else if (v.length != 10) {
                        return "Mobile number should have at least 10 digits";
                      }
                      return null;
                    },
                    inputAction: TextInputAction.next,
                    controller: mobileC,
                    hintText: 'Mobile...',
                    icon: Icon(Icons.mobile_friendly),
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
                            : Icon(Icons.visibility)),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: forgotpassword.text.make(),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                          activeColor: redColor,
                          checkColor: whiteColor,
                          value: isCheck,
                          onChanged: (newvalue) {
                            setState(() {});
                            isCheck = newvalue!;
                          }),
                      5.widthBox,
                      Expanded(
                        child: RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "I agree to the ",
                                style: TextStyle(
                                    fontFamily: regular, color: fontGrey),
                              ),
                              TextSpan(
                                text: termAndCond,
                                style: TextStyle(
                                    fontFamily: regular, color: redColor),
                              ),
                              TextSpan(
                                text: " & ",
                                style: TextStyle(
                                    fontFamily: regular, color: fontGrey),
                              ),
                              TextSpan(
                                text: privacyPolicy,
                                style: TextStyle(
                                    fontFamily: regular, color: redColor),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  5.heightBox,
                  ourButton(
                    color: isCheck == true ? redColor : lightGrey,
                    title: "Signup",
                    textColor: whiteColor,
                    onPress: () {
                      if (formkey.currentState!.validate()) {
                        auth.signUp(context, nameC.text, emailC.text,
                            mobileC.text, passwordC.text);
                      }
                    },
                  ).box.width(context.screenWidth - 50).make(),
                  10.heightBox,
                  RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                        text: alredyhaveaccount,
                        style: TextStyle(fontFamily: bold, color: fontGrey),
                      ),
                      TextSpan(
                        text: login,
                        style: TextStyle(fontFamily: bold, color: redColor),
                      ),
                    ]),
                  ).onTap(() {
                    Navigator.pop(context);
                  })
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
        )),
      ),
    );
  }
}
