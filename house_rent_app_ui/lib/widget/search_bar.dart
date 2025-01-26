import 'package:flutter/material.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: TextField(
        decoration: InputDecoration(
          fillColor: const Color.fromARGB(255, 236, 236, 236),
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10),
          ),
          hintText: "Search..",
          prefixIcon: const Icon(
            Icons.search,
            size: 30,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
