import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:house_rent_app_ui/constants.dart';

class HouseDetail extends StatelessWidget {
  const HouseDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              itemDetail(
                "assets/icons/bedroom.svg",
                "5 Bathroom \n3 Master Bedroom",
              ),
              itemDetail(
                "assets/icons/bathroom.svg",
                "5 Bathroom \n3 Toilet",
              ),
            ],
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              itemDetail(
                "assets/icons/ketchen.svg",
                "2 Kitchen \n120 sqft",
              ),
              itemDetail(
                "assets/icons/parking.svg",
                "2 Parking \n180 sqft",
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Creating a reusable widget for item details
  Expanded itemDetail(String image, String text) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(
            image,
            height: 30,
            width: 30,
          ),
          const SizedBox(height: 6),
          Text(
            text,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
              color: bodyTextColor,
            ),
          ),
        ],
      ),
    );
  }
}
