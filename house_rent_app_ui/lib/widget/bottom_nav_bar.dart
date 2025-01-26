import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
      margin: const EdgeInsets.only(bottom: 10,left: 10,right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(35),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 84, 84, 84).withOpacity(0.3),
            spreadRadius: 1,
            blurRadius: 7,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(
              Icons.home,
              size: 30,
              color: _selectedIndex == 0 ? Colors.black : Colors.grey,
            ),
            onPressed: () => _onItemTapped(0),
          ),
          IconButton(
            icon: Icon(
              Icons.search_sharp,
              size: 30,
              color: _selectedIndex == 1 ? Colors.black : Colors.grey,
            ),
            onPressed: () => _onItemTapped(1),
          ),
          IconButton(
            icon: Icon(
              Icons.notifications,
              size: 30,
              color: _selectedIndex == 2 ? Colors.black : Colors.grey,
            ),
            onPressed: () => _onItemTapped(2),
          ),
           IconButton(
            icon: Icon(
              Icons.chat,
              size: 30,
              color: _selectedIndex == 3 ? Colors.black : Colors.grey,
            ),
            onPressed: () => _onItemTapped(3),
          ),
          IconButton(
            icon: Icon(
              Icons.bookmark,
              size: 30,
              color: _selectedIndex == 4 ? Colors.black : Colors.grey,
            ),
            onPressed: () => _onItemTapped(4),
          ),
         
        ],
      ),
    );
  }
}
