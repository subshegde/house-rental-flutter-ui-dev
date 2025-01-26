import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:house_rent_app_ui/screens/home/best_offer.dart';
import 'package:house_rent_app_ui/screens/home/category.dart';
import 'package:house_rent_app_ui/screens/home/toprecommend.dart';
import 'package:house_rent_app_ui/screens/profile/profile.dart';
import 'package:house_rent_app_ui/widget/bottom_nav_bar.dart';
import 'package:house_rent_app_ui/widget/search_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: const BottomNavBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 5,),
                profileAndMenu(context),
                const MySearchBar(),
                const Divider(),
                const BestOffer(),
                const Divider(),
                const Category(),
                const SizedBox(height: 20,),
                const TopRecommended(),
              ],
            ),
          ),
        ),
      ),
    );
  }


  Padding profileAndMenu(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, left: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(children: [
          SvgPicture.asset("assets/icons/menu.svg"),const SizedBox(width: 5,),const SizedBox(width: 10,),
          const Row(children: [
            Icon(Icons.location_on),
            Text('California',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
            ],)
          ],),
           Column(
            children: [
              GestureDetector(
                onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
                },
                child: const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/virat.jpg"),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}


