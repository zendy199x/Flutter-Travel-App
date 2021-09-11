import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:travel/constants.dart';
import 'package:travel/enum.dart';
import 'package:travel/screens/events/events_screen.dart';
import 'package:travel/screens/friends/friends_screen.dart';
import 'package:travel/screens/home/home_screen.dart';
import 'package:travel/size_config.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(kDefaultPadding),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              NavItem(
                icon: "assets/icons/calendar.svg",
                title: "Events",
                isActive: MenuState.events == selectedMenu,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EventsScreen()),
                  );
                },
              ),
              NavItem(
                icon: "assets/icons/chat.svg",
                title: "Chat",
                isActive: MenuState.chat == selectedMenu,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ),
                  );
                },
              ),
              NavItem(
                icon: "assets/icons/friendship.svg",
                title: "Friends",
                isActive: MenuState.friends == selectedMenu,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FriendsScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  const NavItem({
    Key? key,
    required this.icon,
    required this.title,
    this.isActive = false,
    required this.press,
  }) : super(key: key);

  final String icon, title;
  final bool isActive;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(5),
        width: getProportionateScreenWidth(60),
        height: getProportionateScreenWidth(60),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isActive) kDefaulttShadow],
        ),
        child: Column(
          children: [
            SvgPicture.asset(
              icon,
              height: 28,
              color: kTextColor,
            ),
            Spacer(),
            Text(
              title,
              style: TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
