import 'package:flutter/material.dart';
import 'package:travel/components/app_bar.dart';
import 'package:travel/components/custom_navbar.dart';
import 'package:travel/enum.dart';
import 'package:travel/screens/events/components/body.dart';

class EventsScreen extends StatelessWidget {
  const EventsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(title: "New Events"),
      body: Body(),
      bottomNavigationBar: CustomNavBar(
        selectedMenu: MenuState.events,
      ),
    );
  }
}
