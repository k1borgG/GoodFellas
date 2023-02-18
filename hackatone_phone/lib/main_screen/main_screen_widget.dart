import 'package:flutter/material.dart';
import 'package:hackatone_phone/profile_page/profile_page_widget.dart';

import '../list_real_estate/list_real_estate_widget.dart';
import '../resources/app_images.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({super.key});

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedTab = 0;

  void onSelectTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size.zero,
          child: AppBar(
            // Here we create one to set status bar color
            backgroundColor: Color.fromARGB(255, 0, 0, 0),
            elevation: 0,
          )),
      body: IndexedStack(
        index: _selectedTab,
        children: [
          Container(
            color: const Color.fromRGBO(26, 29, 36, 1),
            child: RealEstateListWidget(),
          ),
          Container(
              color: const Color.fromRGBO(26, 29, 36, 1),
              child: ProfilePageWidget()),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            topLeft: Radius.circular(30),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: Container(
          color: Color(0xFF1A1D24),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomNavigationBar(
              iconSize: 30,
              currentIndex: _selectedTab,
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
    );
  }
}
