import 'package:flutter/material.dart';

class PopularPlaceCard extends StatefulWidget {
  const PopularPlaceCard(
      {super.key,
      required this.imagePath,
      required this.placeName,
      required this.reviewScore,
      required this.desc});

  final String imagePath;
  final String placeName;
  final String reviewScore;
  final String desc;

  @override
  State<PopularPlaceCard> createState() => _PopularPlaceCardState();
}

class _PopularPlaceCardState extends State<PopularPlaceCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(left: 24, right: 24, bottom: 16),
      color: Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: InkWell(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: IntrinsicHeight(
            child: Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15), // Image border
                  child: SizedBox(
                    height: 120,
                    width: 80, // Image radius
                    child: Image.asset('assets/images/coffee_shop.jpg',
                        fit: BoxFit.cover),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.placeName,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              overflow: TextOverflow.ellipsis),
                        ),
                        Text(widget.reviewScore),
                        Text(
                          '${widget.desc}\n',
                          style: const TextStyle(
                              color: Colors.grey,
                              overflow: TextOverflow.ellipsis),
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
