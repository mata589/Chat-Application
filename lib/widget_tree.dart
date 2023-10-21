import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:yoo_katale/auth.dart';
import 'package:yoo_katale/home.dart';
import 'package:yoo_katale/main.dart';
import 'package:yoo_katale/screens/newhomescreen.dart';
import 'package:yoo_katale/sign.dart';
import 'package:yoo_katale/splashscreen/splashscreens.dart';

class WidgetTree extends StatefulWidget {
  WidgetTree({Key? key}) : super(key: key);

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Auth().authStateChanges,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            //DashboardPage
            return HomePage();

            //HomeScreen();
          } else {
            return SplashScreen();
          }
        });
  }
}
