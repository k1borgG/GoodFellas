import 'dart:convert';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hackatone_phone/profile_page/profile_page_widget.dart';

import '../data2.dart';
import '../list_real_estate/list_real_estate_widget.dart';
import '../real_estate/both_entity.dart';
import '../real_estate/apartment_entity.dart';
import '../resources/app_images.dart';


class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({super.key});

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  Both? both;
  void readJson() {
    final json = jsonDecode(jsonString);
    both = Both.fromJson(json);
  }
  
  List<Apartment> allObjects = [];
  @override
  void initState() {
    readJson();
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      setState(() {
        allObjects =
            both!.apartment;
      });
    });
  }

  int selectedTab = 0;
  void onSelectTab(int index) {
    if (selectedTab == index) return;
    setState(() {
      selectedTab = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IndexedStack(
          index: selectedTab,
          children: [
            Container(
              color: const Color.fromRGBO(26, 29, 36, 1),
              child: RealEstateListWidget(realEstates: allObjects),
            ),
            Container(
                color: Color(0xFF1A1D24), child: const ProfilePageWidget()),
          ],
        ),
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child: Container(
            color: Color(0xFF1A1D24),
            child: ClipRRect(
              child: BottomNavigationBar(
                iconSize: 30,
                currentIndex: selectedTab,
                items: const [
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.home,
                    ),
                    label: '',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(
                      Icons.account_circle_sharp,
                    ),
                    label: '',
                  ),
                ],
                onTap: onSelectTab,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
