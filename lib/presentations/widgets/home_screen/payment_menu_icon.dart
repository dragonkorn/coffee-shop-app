import 'package:flutter/material.dart';

class PaymentMenuIcon extends StatefulWidget {
  const PaymentMenuIcon(
      {super.key, required this.iconRes, required this.iconTitle});

  final IconData iconRes;
  final String iconTitle;

  @override
  State<PaymentMenuIcon> createState() => _PaymentMenuIconState();
}

class _PaymentMenuIconState extends State<PaymentMenuIcon> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        SnackBar snackBar = SnackBar(
          content: Text(widget.iconTitle),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              widget.iconRes,
              color: Colors.black,
              size: 36.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
            const SizedBox(
              height: 12,
            ),
            Text(widget.iconTitle),
            const SizedBox(
              height: 8,
            ),
          ],
        ),
      ),
    );
  }
}
