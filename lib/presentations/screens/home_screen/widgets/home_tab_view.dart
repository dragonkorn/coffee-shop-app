import 'package:coffee_shop_app/presentations/widgets/index.dart';
import 'package:flutter/material.dart';

class HomeTabView extends StatelessWidget {
  const HomeTabView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              margin: const EdgeInsets.only(left: 24, right: 24, top: 16),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                        top: 24, left: 16, right: 16, bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [Text("Your balances"), Text("123")],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, bottom: 16),
                    child: Divider(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  const Row(
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
                  const SizedBox(
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
                      semanticLabel: 'Text to announce in accessibility modes',
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Free 1 coffee",
                                  style: TextStyle(fontWeight: FontWeight.bold),
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
    );
  }
}
