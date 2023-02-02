import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:my_wallet/Utils/constants.dart';

class CryptoWallet extends StatefulWidget {
  const CryptoWallet({super.key});

  @override
  State<CryptoWallet> createState() => _CryptoWalletState();
}

class _CryptoWalletState extends State<CryptoWallet> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("Crypto Wallet"),
        centerTitle: true,
        backgroundColor: buttonColor,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              children: [
                Image.asset("assets/crypto.png"),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10, top: 20),
                    alignment: Alignment.center,
                    height: 50,
                    width: 200,
                    decoration: BoxDecoration(
                        color: splashColor,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              color: splashColor,
                              spreadRadius: 4,
                              blurRadius: 4)
                        ]),
                    child: Text(
                      "2330.0 USDT",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.1 - 30,
                ),
                Center(
                  child: Text(
                    "Add to Crypto Wallet",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Center(
                  child: Container(
                      margin: EdgeInsets.only(top: 25),
                      decoration: BoxDecoration(
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(10)),
                      height: 45,
                      width: 300,
                      child: MaterialButton(
                          splashColor: splashColor,
                          onPressed: () {},
                          child: Text(
                            "WITHDRAW",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ))),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
