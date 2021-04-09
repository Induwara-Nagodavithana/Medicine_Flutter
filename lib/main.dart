import 'package:flutter/material.dart';
import 'package:flutter_appsecond/Screen/homepage.dart';
import 'package:flutter_appsecond/Screen/landingpage.dart';
import 'package:flutter_appsecond/Supplier/SupplierPart.dart';
import 'package:flutter_appsecond/Customer/CustomerPart.dart';
void main() {
  runApp(SettingsUI());
}

class SettingsUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Setting UI',
      ////////// You can choose the part to show in here /////////////////
      // home: SupplierPart(),
      // home: CustomerPart(),
      home: LandingPage(),


    );
  }
}
