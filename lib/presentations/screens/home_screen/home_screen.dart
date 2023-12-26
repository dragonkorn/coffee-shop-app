import 'package:flutter/material.dart';

import '../../widgets/home_screen/favorite_place_card.dart';
import '../../widgets/home_screen/home_title.dart';
import '../../widgets/home_screen/payment_menu_icon.dart';
import '../../widgets/home_screen/popular_place_card.dart';

class CoffeeHomeScreen extends StatefulWidget {
  const CoffeeHomeScreen({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<CoffeeHomeScreen> createState() => _CoffeeHomeScreenState();
}

class _CoffeeHomeScreenState extends State<CoffeeHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(39, 106, 71, 1.0),
        toolbarHeight: 100,
        title: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 24),
          child: Text(
            "Coffee Beans",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                margin: const EdgeInsets.only(left: 24, right: 24, top: 16),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          top: 24, left: 16, right: 16, bottom: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [Text("Your balances"), Text("123")],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                      child: Divider(
                        color: Colors.green,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        PaymentMenuIcon(
                          iconRes: Icons.wallet,
                          iconTitle: "Top Up",
                        ),
                        PaymentMenuIcon(
                          iconRes: Icons.wallet_travel,
                          iconTitle: "Pay",
                        ),
                        PaymentMenuIcon(
                          iconRes: Icons.discount,
                          iconTitle: "Promo",
                        ),
                        PaymentMenuIcon(
                          iconRes: Icons.history,
                          iconTitle: "History",
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    )
                  ],
                ),
              ),
              const HomeTitle(
                homeTitleName: "My rewards",
              ),
              Card(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.coffee,
                        color: Colors.grey,
                        size: 36.0,
                        semanticLabel:
                            'Text to announce in accessibility modes',
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.only(left: 16),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Free 1 coffee",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Text("8/10")
                                ],
                              ),
                              Text(
                                "Buy 10 coffees and get 1 coffee for free",
                                style: TextStyle(color: Colors.grey),
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              const HomeTitle(
                homeTitleName: "Favorite Place",
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: 16),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FavoritePlaceCard(
                      imagePath: 'assets/images/coffee_shop.jpg',
                      placeName: 'Coffee Beans',
                      location: 'Bali Indonesia',
                    ),
                    FavoritePlaceCard(
                      imagePath: 'assets/images/coffee_shop.jpg',
                      placeName: 'Coffee Beans',
                      location: 'Bali Indonesia',
                    ),
                    FavoritePlaceCard(
                      imagePath: 'assets/images/coffee_shop.jpg',
                      placeName: 'Coffee Beans',
                      location: 'Bali Indonesia',
                    ),
                  ],
                ),
              ),
              const HomeTitle(
                homeTitleName: "Popular Place",
              ),
              const PopularPlaceCard(
                imagePath: '',
                placeName: 'Coffee Beans - Resort Kuta',
                reviewScore: '4.9',
                desc:
                    'loremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremloremlorem',
              ),
              const PopularPlaceCard(
                imagePath: '',
                placeName: 'Coffee Beans - Mandalika\'s',
                reviewScore: '4.7',
                desc: 'lorem',
              ),
              const PopularPlaceCard(
                imagePath: '',
                placeName: 'Coffee Beans - Street View',
                reviewScore: '4.3',
                desc: 'lorem',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
