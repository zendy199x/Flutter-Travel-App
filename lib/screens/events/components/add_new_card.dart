import 'package:flutter/material.dart';
import 'package:travel/constants.dart';
import 'package:travel/size_config.dart';

class AddNewPlaceCard extends StatelessWidget {
  const AddNewPlaceCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: getProportionateScreenWidth(158),
      height: getProportionateScreenWidth(306),
      decoration: BoxDecoration(
        color: Color(0xFF6A6C93).withOpacity(0.09),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 2,
          color: Color(0xFFEBE8F6),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: getProportionateScreenWidth(53),
            width: getProportionateScreenWidth(53),
            child: TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(60),
                ),
                backgroundColor: kPrimaryColor,
              ),
              onPressed: () {},
              child: Icon(
                Icons.add,
                size: getProportionateScreenWidth(35),
                color: Colors.white,
              ),
            ),
          ),
          VerticalSpacing(of: 10),
          Text(
            "Add New Place",
            style: TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
