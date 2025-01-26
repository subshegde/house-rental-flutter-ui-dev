import 'package:flutter/material.dart';
import 'package:house_rent_app_ui/constants.dart';
import 'package:house_rent_app_ui/model/house.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  int selectedItems = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 0),
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            categoryList.length,
            (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    selectedItems = index;
                  });
                },
                child: Container(
                  height: 50,
                  margin: const EdgeInsets.only(right: 10),
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                  decoration: BoxDecoration(
                    boxShadow: const [BoxShadow(
                      color: Colors.black12,
                      blurRadius: 1,
                      spreadRadius: 0,
                    ),],
                    color: selectedItems == index
                        ? Colors.grey[850]
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: selectedItems == index
                          ? Colors.white
                          : Colors.white,
                      width: 2,
                    ),
                    
                  ),
                  child: Center(
                    child: Text(
                      categoryList[index],
                      style: TextStyle(
                        color: selectedItems == index
                            ? Colors.white
                            : Colors.black87,
                        fontWeight: selectedItems == index
                            ? FontWeight.w600
                            : FontWeight.normal,
                        fontSize: selectedItems == index ? 16 : 14,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
