import 'package:flutter/material.dart';
import 'utils.dart';

class Details extends StatelessWidget {
  // final double width = 80;
  final String drinkPath;
  final String drinkTag;
  Details(this.drinkPath, this.drinkTag);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("HeroWidget"),
      ),
      body: Center(
        child: Util.buildHeroDestination(drinkPath, drinkTag, width),
      ),
    );
  }
}
