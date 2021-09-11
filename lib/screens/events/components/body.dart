import 'package:flutter/material.dart';
import 'package:travel/components/place_card.dart';
import 'package:travel/models/travel_spot.dart';
import 'package:travel/screens/events/components/add_new_card.dart';
import 'package:travel/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(25)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(bottom: 25),
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              runSpacing: 25,
              children: [
                ...List.generate(
                  travelSpots.length,
                  (index) => PlaceCard(
                    travelSpot: travelSpots[index],
                    isFullCard: true,
                    press: () {},
                  ),
                ),
                AddNewPlaceCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
