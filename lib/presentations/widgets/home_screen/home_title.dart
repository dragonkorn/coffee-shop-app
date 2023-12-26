import 'package:flutter/material.dart';

class HomeTitle extends StatefulWidget {
  const HomeTitle({super.key, required this.homeTitleName});

  final String homeTitleName;

  @override
  State<HomeTitle> createState() => _HomeTitleState();
}

class _HomeTitleState extends State<HomeTitle> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, right: 24, bottom: 16, top: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.homeTitleName,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          InkWell(
            onTap: () {},
            child: const Text(
              "View All",
              style: TextStyle(color: Colors.green),
            ),
          )
        ],
      ),
    );
  }
}
