import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:job_circular/pages/apply_page.dart';
import 'package:job_circular/pages/category.dart';
import 'package:job_circular/pages/home_page.dart';
import 'package:job_circular/pages/profile.dart';

class CurveNavigation extends StatefulWidget {
  const CurveNavigation({super.key});

  @override
  State<CurveNavigation> createState() => _CurveNavigationState();
}

class _CurveNavigationState extends State<CurveNavigation> {

  var page=0;
  final pages=[
    HomePage(),
    CategoryPage(),
    ApplyPage(),
    ProfilePage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: pages[page],
      bottomNavigationBar: CurvedNavigationBar(index: 0,backgroundColor: Colors.blue,
          onTap: (index) {
            setState(() {
              page=index;
            });
          },
          items: [
            CurvedNavigationBarItem(
                child: Icon(Icons.home),
                label: 'Home'
            ),
            CurvedNavigationBarItem(
                child: Icon(Icons.category_outlined),
                label: 'Category'
            ),
            CurvedNavigationBarItem(
                child: Icon(Icons.format_shapes_rounded),
                label: 'Apply'
            ),
            CurvedNavigationBarItem(
                child: Icon(Icons.man),
                label: 'Profile'
            ),
          ]
      ),
    );
  }
}
