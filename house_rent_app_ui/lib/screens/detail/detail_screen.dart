import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_rent_app_ui/constants.dart';
import 'package:house_rent_app_ui/model/house.dart';
import 'package:house_rent_app_ui/screens/detail/house_detail.dart';
import 'package:house_rent_app_ui/widget/book_now_button.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.rent});
  final House rent;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              detailImage(context),
              const SizedBox(
                height: 20,
              ),
              houseInfo(),
              const SizedBox(
                height: 20,
              ),
              const HouseDetail(),
              const SizedBox(
                height: 25,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "About",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: titleTextColor),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      rent.description,
                      style: TextStyle(fontSize: 16, color: bodyTextColor),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const BookNowButton(),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container houseInfo() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            rent.name,
            style: TextStyle(
                color: titleTextColor,
                fontSize: 18,
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 7,
          ),
          Text(
            rent.address,
            style: TextStyle(
              color: titleTextColor,
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            "5000 sqf",
            style: TextStyle(
              color: titleTextColor,
              fontSize: 15,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text.rich(TextSpan(children: [
            TextSpan(
              text: rent.price,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            const TextSpan(text: ' Fer month')
          ]))
        ],
      ),
    );
  }

  SizedBox detailImage(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Stack(
        children: [
          Hero(
            tag: rent.imageUrl,
            child: Image.asset(
              rent.imageUrl,
              fit: BoxFit.cover,
              height: double.infinity,
            ),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_circle_left_sharp,
                    color: Colors.white70,
                    size: 40                 ),
                ),              
                  SvgPicture.asset("assets/icons/mark.svg",height: 20,width: 20,),
                
              ],
            ),
          ))
        ],
      ),
    );
  }
}
