import 'package:flutter/material.dart';

import '../resources/app_images.dart';


class RealEstateInfoWidget extends StatelessWidget {
  const RealEstateInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Colors.blue,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 30,
                ),
                _EstateImageWidget(),
                SizedBox(
                  height: 20,
                ),
                _DescriptionWidget(),
                SizedBox(
                  height: 20,
                ),
                _CharacterWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _EstateImageWidget extends StatelessWidget {
  const _EstateImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue.shade100,
          border: Border.all(color: Colors.blue.shade100),
          borderRadius: BorderRadius.circular(20),
        ),
        clipBehavior: Clip.hardEdge,
        child: Container(
          child: Row(
            children: [
              Image(image: AssetImage(HouseImage.image)),
              const SizedBox(
                width: 14,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(
                      height: 18,
                    ),
                    Text(
                      'Бауинвестор',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      maxLines: 1,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Симферопольская 134',
                      style: TextStyle(color: Colors.blue),
                      maxLines: 1,
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
      ),
    );
  }
}

class _DescriptionWidget extends StatelessWidget {
  const _DescriptionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue.shade100,
          border: Border.all(color: Colors.blue.shade100),
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Padding(
          padding: EdgeInsets.all(10.0),
          child: Text(
            'Место, в которое хочется вернуться. Компания ССК представляет жилой комплекс «Дом на Московской». Уютная, уединенная территория, собственная прогулочная зона, внутренняя инфраструктура – здесь все располагает к спокойствию, счастью и состоянию полной гармонии. Жилой комплекс «Дом на Московской» представляет собой монолитный дом комфорт-класса. Здание отличается лаконичными архитектурными решениями, высоким уровнем тепло- и звукоизоляции, повышенной износостойкостью и долговечностью. Это пространство будет включать в себя места для отдыха, прогулок, общения, занятий спортом и игр, появятся красивые клумбы, аккуратные газоны, будут высажены деревья и кустарники. На первых этажах жилых зданий разместятся встроенные нежилые помещения, в которых откроются магазины, предприятия бытового обслуживания, офисы.',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}

class _CharacterWidget extends StatelessWidget {
  const _CharacterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.blue.shade100,
          border: Border.all(color: Colors.blue.shade100),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: const [
                  Text(
                    'Монолит-кирпич',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Text(
                    'Тип здания',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 9),
                  ),
                  Text(
                    '150 кв.м.',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Text(
                    'Размер территории',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 9),
                  )
                ],
              ),
              Column(
                children: const [
                  Text(
                    '3 квартал 2023',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Text(
                    'Дата постройки',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 9),
                  ),
                  Text(
                    'Комфорт+',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Text(
                    'Класс жилья',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 9),
                  )
                ],
              ),
              Column(
                children: const [
                  Text(
                    '17 этажей',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Text(
                    'Этажность',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 9),
                  ),
                  Text(
                    'от 130 тыс.руб.',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                  Text(
                    'Стоимость',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 9),
                  )
                ],
              ),
            ],
          ),
          // child: Column(
          //   crossAxisAlignment: CrossAxisAlignment.center,
          //   children: [
          //     Row(
          //
          //       children: [
          //         Column(
          //           children: const [
          //
          //           ],
          //         ),
          //         Column(
          //           children: const [
          //
          //           ],
          //         ),
          //         Column(
          //           children: const [
          //
          //           ],
          //         ),
          //       ],
          //     ),
          //     Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceAround,
          //       children: [
          //         Column(
          //           children: const [
          //
          //           ],
          //         ),
          //         Column(
          //           children: const [
          //
          //           ],
          //         ),
          //         Column(
          //           children: const [
          //
          //           ],
          //         ),
          //       ],
          //     ),
          //   ],
          // ),
        ),
      ),
    );
  }
}
