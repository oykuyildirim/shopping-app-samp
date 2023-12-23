import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'menu_animasyon.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "DashboardMenu",
      home: MenuAnimasyon(),
    );

  }
}