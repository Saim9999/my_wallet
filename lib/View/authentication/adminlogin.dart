import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:my_wallet/Utils/constants.dart';
import 'package:my_wallet/View/Homepage..dart';

class LoginAdmin extends StatefulWidget {
  const LoginAdmin({super.key});

  @override
  State<LoginAdmin> createState() => _LoginAdminState();
}

class _LoginAdminState extends State<LoginAdmin> {
  TextEditingController emailC = TextEditingController();
  TextEditingController passC = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  var email = "sigmaadmin@gmail.com";
  var password = "sigmawallet";
  validateLogin() async {
    FirebaseAuth _auth = await FirebaseAuth.instance;
    if (_formKey.currentState!.validate()) {
      final credential = await _auth
          .signInWithEmailAndPassword(email: emailC.text, password: passC.text)
          .whenComplete(() => print("validate"))
          .whenComplete(() => Get.to(() => HomePage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    "assets/login-new.png",
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    left: 10,
                    top: 80,
                    child: Text(
                      "SIGMA WALLET",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.normal),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: height * 0.1 - 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Email"),
                      Container(
                          margin: EdgeInsets.only(top: 5, bottom: 20),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Email",
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.all(5)),
                            controller: emailC,
                            validator: (v) {
                              if (!emailC.text
                                  .contains("sigmaadmin@gmail.com")) {
                                return "Email badly formatted";
                              }
                              return null;
                            },
                          )),
                      Text("Password"),
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "Password",
                                contentPadding: EdgeInsets.all(5),
                                border: InputBorder.none),
                            controller: passC,
                            validator: (v) {
                              if (!passC.text.contains("sigmawallet")) {
                                return "Password should contains atleast 6 characters";
                              }
                              return null;
                            },
                          )),
                      Container(
                          margin: EdgeInsets.only(top: 20),
                          decoration: BoxDecoration(
                              color: buttonColor,
                              borderRadius: BorderRadius.circular(10)),
                          height: 45,
                          width: width,
                          child: MaterialButton(
                            splashColor: splashColor,
                            onPressed: () {
                              validateLogin();
                              // Get.to(() => CurrencyExchangePage());
                            },
                            child: Text(
                              "LOGIN",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          )),
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
