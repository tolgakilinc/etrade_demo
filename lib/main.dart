import 'package:etrade/utilities/routes.dart';
import 'package:flutter/material.dart';
import 'Screens/productList.dart';

void main() =>runApp(Etrade());

class Etrade extends StatelessWidget {
  const Etrade({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "E-Ticaret",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: ProductList(),
      routes: Routes.routes,
    );
  }
}
