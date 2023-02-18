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

  // void _onEstateTap(int index) {
  //   // final id = _realEstates[index].id;
  //   Navigator.of(context)
  //       .pushNamed('/main_screen/real_estate_info', arguments: id);
  // }

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
                  // physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
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
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(10, 10)),
                                  child: Image.asset(
                                    widget.realEstates[index].apartImg,
                                    fit: BoxFit.cover,
                                    height: 150,
                                    width: double.infinity,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 7,
                                      ),
                                      Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              widget
                                                  .realEstates[index].apartName,
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            SizedBox(
                                              width: 20,
                                            ),
                                            // Text(
                                            //   _realEstates[index].district,
                                            //   style:
                                            //       TextStyle(color: Colors.grey),
                                            // ),
                                          ]),
                                      SizedBox(
                                        height: 25,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Парковка / Школа / Детский сад',
                                            style:
                                                TextStyle(color: Colors.white),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Material(
                          //   color: Colors.transparent,
                          //   child: InkWell(
                          //     borderRadius:
                          //         const BorderRadius.all(Radius.circular(10)),
                          //     onTap: () => _onEstateTap(index),
                          //   ),
                          // )
                        ],
                      ),
                    );
                  }),
            ),
          ),
        ),
        Container(
          height: 70,
          color: Color(0xFF1A1D24),
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
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xFF1A1D24),
                          ),
                          contentPadding: EdgeInsets.only(top: 4),
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
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.sort_outlined),
                    color: Colors.white70,
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
