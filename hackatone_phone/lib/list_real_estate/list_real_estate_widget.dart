import 'package:flutter/material.dart';

import '../resources/app_images.dart';


class RealEstate {
  final int id;
  final String imageName;
  final String developer;
  final String district;
  final String description;

  RealEstate({
    required this.id,
    required this.imageName,
    required this.developer,
    required this.district,
    required this.description,
  });
}

class RealEstateListWidget extends StatefulWidget {
  const RealEstateListWidget({super.key});

  @override
  State<RealEstateListWidget> createState() => _RealEstateListWidgetState();
}

class _RealEstateListWidgetState extends State<RealEstateListWidget> {
  final _realEstates = [
    RealEstate(
      id: 1,
      imageName: HouseImage.image,
      developer: 'Бауинвест',
      district: 'Симферопольская 134',
      description:
          'Дом от лучших застройщиков Краснодара, красивый район и совр...',
    ),
    RealEstate(
      id: 2,
      imageName: HouseImage.image,
      developer: 'Догма',
      district: 'Красная 12',
      description:
          'Дом от лучших застройщиков Краснодара, красивый район и совр...',
    ),
    RealEstate(
      id: 3,
      imageName: HouseImage.image,
      developer: 'Бауинвест',
      district: 'Первомайская 18',
      description:
          'Дом от лучших застройщиков Краснодара, красивый район и совр...',
    ),
    RealEstate(
      id: 4,
      imageName: HouseImage.image,
      developer: 'Догма',
      district: 'Айвазовского 131',
      description:
          'Дом от лучших застройщиков Краснодара, красивый район и совр...',
    ),
    RealEstate(
      id: 5,
      imageName: HouseImage.image,
      developer: 'Семья',
      district: 'Айвазовского 131',
      description:
          'Дом от лучших застройщиков Краснодара, красивый район и совр...',
    ),
    RealEstate(
      id: 6,
      imageName: HouseImage.image,
      developer: 'Бауинвест',
      district: 'Айвазовского 131',
      description:
          'Дом от лучших застройщиков Краснодара, красивый район и совр...',
    ),
    RealEstate(
      id: 7,
      imageName: HouseImage.image,
      developer: 'Догма',
      district: 'Айвазовского 131',
      description:
          'Дом от лучших застройщиков Краснодара, красивый район и совр...',
    ),
    RealEstate(
      id: 8,
      imageName: HouseImage.image,
      developer: 'Бауинвест',
      district: 'Айвазовского 131',
      description:
          'Дом от лучших застройщиков Краснодара, красивый район и совр...',
    ),
    RealEstate(
      id: 9,
      imageName: HouseImage.image,
      developer: 'Бауинвест',
      district: 'Айвазовского 131',
      description:
          'Дом от лучших застройщиков Краснодара, красивый район и совр...',
    ),
  ];

  var _filteredEstates = <RealEstate>[];

  final _searchController = TextEditingController();

  void _searchMovies() {
    final query = _searchController.text;
    if (query.isNotEmpty) {
      _filteredEstates = _realEstates.where((RealEstate realEstate) {
        return realEstate.district.toLowerCase().contains(query.toLowerCase());
      }).toList();
    } else {
      _filteredEstates = _realEstates;
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _filteredEstates = _realEstates;
    _searchController.addListener((_searchMovies));
  }

  void _onEstateTap(int index) {
    final id = _realEstates[index].id;
    Navigator.of(context)
        .pushNamed('/main_screen/real_estate_info', arguments: id);
  }

  final findTextFieldBorder = const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.lightBlue),
    borderRadius: BorderRadius.all(
      Radius.circular(30),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
            padding: EdgeInsets.only(top: 70),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            itemCount: _filteredEstates.length,
            itemExtent: 163,
            itemBuilder: (BuildContext context, int index) {
              final realEstate = _filteredEstates[index];
              return Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        border:
                            Border.all(color: Colors.black.withOpacity(0.2)),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
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
                          Image(image: AssetImage(realEstate.imageName)),
                          const SizedBox(
                            width: 14,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  height: 18,
                                ),
                                Text(
                                  realEstate.developer,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  maxLines: 1,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  realEstate.district,
                                  style: const TextStyle(color: Colors.blue),
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
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        onTap: () => _onEstateTap(index),
                      ),
                    )
                  ],
                ),
              );
            }),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Expanded(
                child: SizedBox(
                  child: TextField(
                    controller: _searchController,
                    style: const TextStyle(color: Colors.blue),
                    cursorColor: Colors.lightBlue,
                    decoration: InputDecoration(
                      hintText: 'Поиск',
                      hintStyle: const TextStyle(color: Colors.blue),
                      filled: true,
                      fillColor: Colors.white38.withAlpha(200),
                      border: findTextFieldBorder,
                      disabledBorder: findTextFieldBorder,
                      enabledBorder: findTextFieldBorder,
                      focusedBorder: findTextFieldBorder,
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.settings_suggest),
                color: Colors.white70,
              )
            ],
          ),
        )
      ],
    );
  }
}
