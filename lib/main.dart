import 'package:flutter/material.dart';
import 'package:layout/details.dart';
import 'package:layout/utils.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.orange), home: HeroPage());
  }
}

class HeroPage extends StatelessWidget {
  const HeroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello Hero ANimation'),
      ),
      body: Container(
          padding: EdgeInsets.all(25),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                child: Util.buildHeroIcon(Util.CAPPACCINO_Url, 'cappuccino'),
                onTap: () {
                  changeRoute(context, 'cappuccino');
                },
              ),
              GestureDetector(
                child: Util.buildHeroIcon(Util.COFFEE_Url, 'coffee'),
                onTap: () {
                  changeRoute(context, 'coffee');
                },
              ),
              GestureDetector(
                child: Util.buildHeroIcon(Util.TEA_Url, 'tea'),
                onTap: () {
                  changeRoute(context, 'tea');
                },
              ),
            ],
          )),
    );
  }

  void changeRoute(BuildContext context, String drink) {
    switch (drink) {
      case 'coffee':
        {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Details(Util.COFFEE_Url, drink)));
          break;
        }
      case 'tea':
        {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Details(Util.TEA_Url, drink)));
          break;
        }
      case 'cappuccino':
        {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Details(Util.CAPPACCINO_Url, drink)));
          break;
        }
    }
  }
}
