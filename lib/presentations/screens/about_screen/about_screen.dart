import 'package:coffee_shop_app/presentations/widgets/Vectors.dart';
import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      body: Center(
        child: Vector(
          Vectors.coffeeCups,
          size: 250,
        ),
      ),
    );
  }
}
