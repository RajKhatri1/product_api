import 'package:flutter/material.dart';
import 'package:product_api/screens/add_product/addscreen.dart';
import 'package:product_api/screens/homepage/provider/Homeprovider.dart';
import 'package:product_api/screens/homepage/view/homescreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => homrprovider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => Homescreen(),
          'add': (context) => add_pro(),
        },
      ),
    ),
  );
}
