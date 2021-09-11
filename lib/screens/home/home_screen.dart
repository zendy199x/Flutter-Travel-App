import 'package:flutter/material.dart';
import 'package:travel/components/app_bar.dart';
import 'package:travel/components/custom_navbar.dart';
import 'package:travel/enum.dart';
import 'package:travel/screens/home/components/body.dart';
import 'package:travel/size_config.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // You have to call SizeConfig on your starting page
    SizeConfig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(isTransparent: true),
      body: Body(),
      bottomNavigationBar: CustomNavBar(
        selectedMenu: MenuState.chat,
      ),
    );
  }
}
