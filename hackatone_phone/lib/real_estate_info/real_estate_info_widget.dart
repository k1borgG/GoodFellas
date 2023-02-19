

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
    var estate = ModalRoute.of(context)!.settings.arguments as List<dynamic>;
    
    return Scaffold(
      appBar: AppBar(backgroundColor: const Color(0xFF1A1D24),
      elevation: 0,
      title: Text(estate[0]),
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
              children:  [
                const SizedBox(
                  height: 10,
                ),
                _EstateImageWidget(image: estate[1]),
                const SizedBox(
                  height: 10,
                ),
                _DescriptionWidget(estate: estate,),
                const SizedBox(
                  height: 10),
                const EstateButtonWidget(),
                const _CharacterWidget(),
                
              ],
            ),
          ),
        ),
      ),
      
    );
  }
}

class _EstateImageWidget extends StatelessWidget {
  dynamic image;
   _EstateImageWidget({required this.image,super.key});

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
                  Image(image: AssetImage(image),fit: BoxFit.cover,),
                  
      ),
          ],
        ),
    );
  }
}

class _DescriptionWidget extends StatelessWidget {
  List<dynamic> estate;
   _DescriptionWidget({
    required this.estate,
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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  
                  const Text('Цена за кв/м:',style: TextStyle(fontSize: 18,color: Colors.white54),),
                  Text("${estate[4]}",style: TextStyle(fontSize: 17,color: Colors.white),),
                  const SizedBox(height: 8,),
                  const Text('Количество комнат:',style: TextStyle(fontSize: 18,color: Colors.white54),),
                  Text(estate[2],style: TextStyle(fontSize: 17,color: Colors.white),),
                  const SizedBox(height: 8,),
                  const Text('Тип :',style: TextStyle(fontSize: 18,color: Colors.white54),),
                  Text(estate[6],style: TextStyle(fontSize: 17,color: Colors.white),),
                  
                ],),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Этажи',style: TextStyle(fontSize: 18,color: Colors.white54),),
                Text(estate[3],style: TextStyle(fontSize: 17,color: Colors.white),),
                const SizedBox(height: 8,),
                const Text('Доходность:',style: TextStyle(fontSize: 18,color: Colors.white54),),
                Text("${estate[5]}",style: TextStyle(fontSize: 17,color: Colors.white),),
                
                
                ],
                ),
            ],
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