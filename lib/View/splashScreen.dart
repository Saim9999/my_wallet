import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:my_wallet/Utils/constants.dart';
import 'package:my_wallet/View/Homepage..dart';
import 'package:my_wallet/View/authentication/adminlogin.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 4), () {
      // return Get.to();
      Get.offAll(() => LoginAdmin());
    });
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: splashColor,
        body: Container(
            alignment: Alignment.center,
            height: height,
            width: width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/spl.png"), fit: BoxFit.cover)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                Image.asset(
                  "assets/logo.jpg",
                  height: 200,
                  width: 200,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    "My Wallet",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
