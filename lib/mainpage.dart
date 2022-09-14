import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key, required this.shopName}) : super(key: key);
final String shopName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(shopName),
      ),
    );
  }
}
