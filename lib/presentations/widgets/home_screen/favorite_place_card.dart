import 'package:flutter/material.dart';

class FavoritePlaceCard extends StatefulWidget {
  const FavoritePlaceCard(
      {super.key,
      required this.imagePath,
      required this.placeName,
      required this.location});

  final String imagePath;
  final String placeName;
  final String location;

  @override
  State<FavoritePlaceCard> createState() => _FavoritePlaceCardState();
}

class _FavoritePlaceCardState extends State<FavoritePlaceCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 220,
          width: 180,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blue,
            image: DecorationImage(
              image: AssetImage(widget.imagePath),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black45, BlendMode.srcOver),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 150,
                ),
                Text(
                  widget.placeName,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  widget.location,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
