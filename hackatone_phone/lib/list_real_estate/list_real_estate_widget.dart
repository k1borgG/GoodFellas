import 'package:flutter/material.dart';

import '../real_estate/both_entity.dart';
import '../resources/app_images.dart';

class RealEstateListWidget extends StatefulWidget {
  List realEstates;
  RealEstateListWidget({required this.realEstates});
  @override
  State<RealEstateListWidget> createState() => _RealEstateListWidgetState();
}

class _RealEstateListWidgetState extends State<RealEstateListWidget> {
  bool flag = false;

  _RealEstateListWidgetState();
  // var _filteredEstates = <RealEstate>[];

  final _searchController = TextEditingController();

  // void _searchMovies() {
  //   final query = _searchController.text;
  //   if (query.isNotEmpty) {
  //     _filteredEstates = _realEstates.where((RealEstate realEstate) {
  //       return realEstate.district.toLowerCase().contains(query.toLowerCase());
  //     }).toList();
  //   } else {
  //     _filteredEstates = _realEstates;
  //   }
  //   setState(() {});
  // }

  void changeColor() {
    setState(() {
      flag = !flag;
    });
  }

  @override
  void initState() {
    super.initState();
    // _filteredEstates = _realEstates;
    // _searchController.addListener((_searchMovies));
  }

  void _onEstateTap(int index) {
    final id = index;
    List<dynamic> realestate = [
      widget.realEstates[id].apartmentInfo.apartName,
      widget.realEstates[id].apartmentInfo.apartImg,
      widget.realEstates[id].apartmentInfo.spec.apartSpec,
      widget.realEstates[id].apartmentInfo.spec.apartFloor,
      widget.realEstates[id].apartmentInfo.spec.apartPrice,
      widget.realEstates[id].apartmentInfo.spec.apartProfit,
      widget.realEstates[id].category
    ];

    Navigator.of(context)
        .pushNamed('/main_screen/real_estate_info', arguments: realestate);
  }

  void displayBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (ctx) {
          return Container(
            height: MediaQuery.of(context).size.height * 2,
            child: Center(
              child: Text("Welcome to AndroidVille!"),
            ),
          );
        });
  }

  final findTextFieldBorder = const OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFFAFB0B2)),
    borderRadius: BorderRadius.all(
      Radius.circular(15),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Container(
              child: ListView.builder(
                  itemExtent: 300,
                  padding: EdgeInsets.only(top: 70),
                  keyboardDismissBehavior:
                      ScrollViewKeyboardDismissBehavior.onDrag,
                  itemCount: widget.realEstates.length,
                  itemBuilder: (BuildContext context, int index) {
                    // final realEstate = _filteredEstates[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 10),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xFF1A1B30),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black,
                                  blurRadius: 8,
                                  offset: Offset(4, 4), // Shadow position
                                ),
                              ],
                            ),
                            width: double.infinity,
                            child: Column(
                              children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.all(
                                      Radius.elliptical(10, 10)),
                                  child: Image.asset(
                                    widget.realEstates[index].apartmentInfo
                                        .apartImg,
                                    fit: BoxFit.cover,
                                    height: 150,
                                    width: double.infinity,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 5),
                                  child: Column(
                                    children: [
                                      const SizedBox(
                                        height: 7,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Expanded(
                                            child: Text(
                                              widget.realEstates[index]
                                                  .apartmentInfo.apartName,
                                              style: const TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Text(
                                            widget.realEstates[index].category,
                                            style: TextStyle(
                                                color: Colors.grey.shade400),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Text(
                                            'Цена: ${widget.realEstates[index].apartmentInfo.spec.apartPrice}₽',
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                          Text(
                                            'Доходность: ${widget.realEstates[index].apartmentInfo.spec.apartProfit}₽',
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                              onTap: () => _onEstateTap(index),
                            ),
                          )
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ),
        Container(
          height: 70,
          color: const Color(0xFF1A1D24),
          child: Padding(
            padding: const EdgeInsets.all(0.0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.space,
              children: [
                Expanded(
                  child: SizedBox(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextField(
                        controller: _searchController,
                        style: const TextStyle(color: Color(0xFF1A1D24)),
                        cursorColor: Color(0xFF1A1D24),
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.search,
                            color: Color(0xFF1A1D24),
                          ),
                          contentPadding: const EdgeInsets.only(top: 4),
                          hintText: 'Поиск',
                          hintStyle: const TextStyle(
                            color: Color(0xFF1A1D24),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: findTextFieldBorder,
                          disabledBorder: findTextFieldBorder,
                          enabledBorder: findTextFieldBorder,
                          focusedBorder: findTextFieldBorder,
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: FloatingActionButton(
                    backgroundColor: Colors.white70,
                    onPressed: () => displayBottomSheet(context),
                    child: Icon(
                      Icons.sort,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
