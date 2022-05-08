import 'package:flutter/material.dart';
import 'package:m8/navigation/navigation.dart';

class Economy extends StatefulWidget {
  const Economy({ Key? key }) : super(key: key);

  @override
  State<Economy> createState() => _EconomyState();
}

class _EconomyState extends State<Economy> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar( 
      backgroundColor:  Color(0xFFFFFFFF),
      centerTitle: true,
      title: Text('Como economizar mesmo ganhando pouco',
      style: TextStyle(color: Color(0xFF60D45C)),
      
      ),      
      leading: Builder(
      builder: (BuildContext context) {
      return IconButton(
        color: Color(0xFF60D45C),
        icon: const Icon(Icons.arrow_back),
        onPressed: () { 
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => NavegacaoPage()),
             );
         },
        tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      );
    },
    ),
    ), 
    );
  }
}