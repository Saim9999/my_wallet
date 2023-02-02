import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:my_wallet/Utils/constants.dart';
import 'package:my_wallet/View/Homepage..dart';
import 'package:my_wallet/View/cryptowallet.dart';

class CurrencyExchangePage extends StatefulWidget {
  const CurrencyExchangePage({super.key});

  @override
  State<CurrencyExchangePage> createState() => _CurrencyExchangePageState();
}

class _CurrencyExchangePageState extends State<CurrencyExchangePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    var usdt = 0.0;
    var usdtNew = 2500.0;
    bool isConverted = false;
    return Scaffold(
      appBar: AppBar(
        title: Text("Currency Exchange"),
        backgroundColor: buttonColor,
        // Argentine
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: height * 0.1 - 30,
                ),
                Center(
                  child: Text(
                    "My Wallet",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
                  ),
                ),
                SizedBox(
                  height: height * 0.1 - 30,
                ),
                Center(
                  child: Container(
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
                      "5000 AUS",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * 0.1 - 30,
                ),
                Text("Enter Amount"),
                Container(
                    margin: EdgeInsets.only(top: 7),
                    decoration:
                        BoxDecoration(color: Colors.grey.withOpacity(0.3)),
                    height: 45,
                    // width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        border: InputBorder.none,
                        hintText: "Enter Amount",
                      ),
                    )),
                SizedBox(
                  height: height * 0.1 - 30,
                ),
                Center(
                  child: Text(
                    "Convert to USDT",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                Center(
                  child: Container(
                      margin: EdgeInsets.only(top: 15),
                      decoration: BoxDecoration(
                          color: buttonColor,
                          borderRadius: BorderRadius.circular(10)),
                      height: 45,
                      width: 300,
                      child: MaterialButton(
                          splashColor: splashColor,
                          onPressed: () {
                            setState(() {
                              print("hello");
                              usdt = 2500.0;
                              usdtNew = usdt;
                              isConverted = true;
                              print(isConverted);
                              print(usdt);
                            });
                          },
                          child: Text(
                            "CONVERT",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ))),
                ),
                SizedBox(
                  height: height * 0.1 - 30,
                ),
                Center(
                  child: Text(
                    "USDT Amount",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
                  ),
                ),
                SizedBox(
                  height: height * 0.1 - 30,
                ),
                Center(
                  child: Container(
                    margin: EdgeInsets.only(bottom: 10),
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
                      isConverted == false ? "0.0 USDT" : "2500.0 USDT",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                Center(
                    child: TextButton(
                        onPressed: () {
                          Get.to(() => CryptoWallet());
                        },
                        child: Text("Withdraw to Crypto Wallet")))
              ],
            ),
          )
        ],
      ),
    );
  }
}
