import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:my_wallet/Utils/constants.dart';
import 'package:my_wallet/View/CurrencyExchange.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var images = [
    "https://media.istockphoto.com/id/1084096262/vector/concept-of-mobile-payments-wallet-connected-with-mobile-phone.jpg?s=612x612&w=0&k=20&c=noILf6rTUyxN41JnmeFhUmqQWiCWoXlg0zCLtcrabD4=",
    "https://images.ctfassets.net/q5ulk4bp65r7/3GXsKOhU34b8g8FYMf2Y6x/991f9abe5d7fc74b662095a6ac20c17e/Learn_Illustration_What_is_a_Crypto_Wallet.jpg",
    "https://images.idgesg.net/images/article/2019/04/crypto-currency_hand-holding-phone-iwth-bitcoin_digital-wallet_bitcoin_blockchain-100793898-large.jpg?auto=webp&quality=85,70",
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("My Wallet"),
          backgroundColor: buttonColor,
          centerTitle: true,
        ),
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: height * 0.1 - 40,
                ),
                CarouselSlider(
                    items: images
                        .map((item) => Container(
                              child: Image.network(item,
                                  fit: BoxFit.cover, width: 1000),
                            ))
                        .toList(),
                    options: CarouselOptions(
                      height: 200,
                      // aspectRatio: 16 / 9,
                      // viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.3,
                      // onPageChanged: (){},
                      scrollDirection: Axis.horizontal,
                    )),
                SizedBox(
                  height: height * 0.1 - 30,
                ),
                Text(
                  "DEPOSIT ARG Pesos",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height * 0.1 + 20,
                ),
                Container(
                    decoration: BoxDecoration(
                        color: buttonColor,
                        borderRadius: BorderRadius.circular(10)),
                    height: 45,
                    width: 300,
                    child: MaterialButton(
                      splashColor: splashColor,
                      onPressed: () {
                        Get.to(() => CurrencyExchangePage());
                      },
                      child: Text(
                        "DEPOSIT FROM AESTROPAY",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
