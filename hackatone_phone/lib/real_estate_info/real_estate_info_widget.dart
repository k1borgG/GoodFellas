
import '../real_estate/both_entity.dart';
import 'package:flutter/material.dart';
import 'package:hackatone_phone/real_estate/apartment_entity.dart';

import '../resources/app_images.dart';


class RealEstateInfoWidget extends StatefulWidget {
  
  const RealEstateInfoWidget({super.key});

  @override
  State<RealEstateInfoWidget> createState() => _RealEstateInfoWidgetState();
}

class _RealEstateInfoWidgetState extends State<RealEstateInfoWidget> {
  bool iconWasPressed = false;

  void _iconIsPressed(){
    setState(() {
      iconWasPressed = !iconWasPressed;
    });
     
  

  }

  @override
  Widget build(BuildContext context) {
    final estateId = ModalRoute.of(context)!.settings.arguments;
    
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0xFF1A1D24),
      elevation: 0,
      title: Text('gjkd'),
      centerTitle: true,
      actions: [  IconButton(color: iconWasPressed == false?Colors.white: Colors.red,icon: Icon( iconWasPressed == false?Icons.favorite_border: Icons.favorite,), onPressed: () { _iconIsPressed();
        
      },) ],),
     
      body: SafeArea(
        minimum: EdgeInsets.zero,
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color(0xFF1A1D24),
          child: Padding(
            padding: const EdgeInsets.only(top: 12.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                SizedBox(
                  height: 10,
                ),
                _EstateImageWidget(),
                SizedBox(
                  height: 10,
                ),
                _DescriptionWidget(),
                SizedBox(
                  height: 10),
                EstateButtonWidget(),
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
      
        
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
              clipBehavior: Clip.hardEdge,
              width: double.infinity,
              height: 250,
              
              child: 
                  const Image(image: AssetImage(HouseImage.picAppOne),fit: BoxFit.cover,),
                  
      ),
          ],
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
          
          
          borderRadius: BorderRadius.circular(20),
        ),
        child:  Padding(
          padding: const EdgeInsets.all(10.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Row(
              children: [
                Expanded(
                  child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                    children: const[
                    Text('Район:',style: TextStyle(fontSize: 18,color: Colors.white54),),
                    Text('Знаменский',style: TextStyle(fontSize: 17,color: Colors.white),),
                    SizedBox(height: 8,),
                    Text('Цена за кв/м:',style: TextStyle(fontSize: 18,color: Colors.white54),),
                    Text('118.000 руб',style: TextStyle(fontSize: 17,color: Colors.white),),
                    SizedBox(height: 8,),
                    Text('Количество комнат:',style: TextStyle(fontSize: 18,color: Colors.white54),),
                    Text('2 к. кв.',style: TextStyle(fontSize: 17,color: Colors.white),),
                    SizedBox(height: 8,),
                    Text('Тип :',style: TextStyle(fontSize: 18,color: Colors.white54),),
                    Text('Жилая',style: TextStyle(fontSize: 17,color: Colors.white),),
                    
                  ],),
                ),
                Container(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const[
                    Text('Количество этажей:',style: TextStyle(fontSize: 18,color: Colors.white54),),
                    Text('12',style: TextStyle(fontSize: 17,color: Colors.white),),
                    SizedBox(height: 8,),
                    Text('Доходность:',style: TextStyle(fontSize: 18,color: Colors.white54),),
                    Text('19,2%',style: TextStyle(fontSize: 17,color: Colors.white),),
                    SizedBox(height: 8,),
                    Text('Доп. цена:',style: TextStyle(fontSize: 18,color: Colors.white54),),
                    Text('120.000 руб',style: TextStyle(fontSize: 17,color: Colors.white),),
                    SizedBox(height: 50,)],
                    ),
                    
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}

class _CharacterWidget extends StatefulWidget {
  const _CharacterWidget({
    super.key,
  });

  @override
  State<_CharacterWidget> createState() => _CharacterWidgetState();
}

class _CharacterWidgetState extends State<_CharacterWidget> {

  void onTap(){
    Navigator.pop(context);
    setState(() {
      
    });
  }
   
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ],),
      child: Container(
        color: Color(0xFF1A1D24),
        
        child: Padding(
          padding: const EdgeInsets.only(bottom:12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              IconButton(onPressed: () =>onTap(), icon: Icon(Icons.home,color: Colors.grey, size: 30,)),
              const SizedBox(width: 160,),
              IconButton(onPressed: () =>onTap(), icon: Icon(Icons.account_circle_sharp,color: Colors.grey,size: 30,)),
            ],
          ),
          
        ),
      ),
    );
  }
}


class EstateButtonWidget extends StatelessWidget {
  const EstateButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(child: Padding(padding: EdgeInsets.all(10),child: Align(alignment: Alignment.topRight,child: Container(
                    width: 200,
                    height: 40,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(176, 41, 75, 1),
                          blurRadius: 20,
                          blurStyle: BlurStyle.normal,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: ElevatedButton(
                      onPressed: (){},
                      clipBehavior: Clip.hardEdge,
                      style: ButtonStyle(
                        backgroundColor: const MaterialStatePropertyAll(
                          Color.fromRGBO(176, 41, 75, 1),
                        ),
                        overlayColor: const MaterialStatePropertyAll(
                          Color.fromRGBO(176, 41, 75, 1),
                        ),
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                      ),
                      child: const Text(
                        'Инвестировать',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),),),),
    );
  }
}