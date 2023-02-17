import 'package:flutter/material.dart';


import '../list_real_estate/list_real_estate_widget.dart';
import '../resources/app_images.dart';

class MainScreenWidget extends StatefulWidget {
  const MainScreenWidget({super.key});

  @override
  State<MainScreenWidget> createState() => _MainScreenWidgetState();
}

class _MainScreenWidgetState extends State<MainScreenWidget> {
  int _selectedTab = 1;

  void onSelectTab(int index) {
    if (_selectedTab == index) return;
    setState(() {
      _selectedTab = index;
    });
  }

  void _onEstateTap(int index) {
    // final id = _realEstates[index].id;
    // Navigator.of(context).pushNamed('/main_screen/estate_info', arguments: id);
  }
  final _myEstates = [
    RealEstate(
      id: 1,
      imageName: HouseImage.image,
      developer: 'Бауинвест',
      district: 'Симферопольская 134',
      description:
          'Дом от лучших застройщиков Краснодара, красивый район и совр...',
    ),
    RealEstate(
      id: 1,
      imageName: HouseImage.image,
      developer: 'Бауинвест',
      district: 'Симферопольская 134',
      description:
          'Дом от лучших застройщиков Краснодара, красивый район и совр...',
    ),
    RealEstate(
      id: 1,
      imageName: HouseImage.image,
      developer: 'Бауинвест',
      district: 'Симферопольская 134',
      description:
          'Дом от лучших застройщиков Краснодара, красивый район и совр...',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: IndexedStack(
        index: _selectedTab,
        children: [
          Container(
            color: const Color(0xFF1A1D24),
            child: Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    color: const Color(0xFFAFB0B2),
                    border: Border.all(color: Colors.black.withOpacity(0.2)),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Column(
                    children: const [
                      SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Placeholder(),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Имя пользователя',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Почта',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                Container(
                  width: double.infinity,
                  height: 400,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(37, 40, 47, 1),
                    border: Border.all(color: const Color.fromRGBO(63, 66, 73, 1),),
                    borderRadius: const BorderRadius.all(Radius.circular(20)),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 8,
                        offset: const Offset(0, 2),
                      ),
                    ],
                  ),
                  clipBehavior: Clip.hardEdge,
                  child: Stack(
                    children: [
                      ListView.builder(
                          padding: const EdgeInsets.only(top: 70),
                          keyboardDismissBehavior:
                              ScrollViewKeyboardDismissBehavior.onDrag,
                          itemCount: _myEstates.length,
                          itemExtent: 163,
                          itemBuilder: (BuildContext context, int index) {
                            final realEstate = _myEstates[index];
                            return Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 10),
                              child: Stack(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFAFB0B2),
                                      border: Border.all(
                                          color: Colors.black.withOpacity(0.2)),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.black.withOpacity(0.1),
                                          blurRadius: 8,
                                          offset: const Offset(0, 2),
                                        ),
                                      ],
                                    ),
                                    clipBehavior: Clip.hardEdge,
                                    child: Row(
                                      children: [
                                        Image(
                                            image: AssetImage(
                                                realEstate.imageName)),
                                        const SizedBox(
                                          width: 14,
                                        ),
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              const SizedBox(
                                                height: 18,
                                              ),
                                              Text(
                                                realEstate.developer,
                                                style: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                                maxLines: 1,
                                              ),
                                              const SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                realEstate.district,
                                                style: const TextStyle(
                                                    color: Colors.blue),
                                                maxLines: 1,
                                              ),
                                              const SizedBox(
                                                height: 18,
                                              ),
                                              Text(
                                                realEstate.description,
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                      onTap: () => _onEstateTap(index),
                                    ),
                                  )
                                ],
                              ),
                            );
                          }),
                      Container(
                        width: double.infinity,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFFAFB0B2),
                          border: Border.all(color: const Color(0xFFAFB0B2)),
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Недвижимость',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(color: const Color.fromRGBO(26, 29, 36, 1),child: RealEstateListWidget(),),
        ],
      ),
      bottomNavigationBar: Container(
        
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30),),
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
              iconSize: 48,
              currentIndex: _selectedTab,
              items: const[
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
        ),),);
  }
}
