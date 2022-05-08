import 'package:flutter/material.dart';
import 'package:m8/navigation/navigation.dart';

class Profitability extends StatefulWidget {
  const Profitability({ Key? key }) : super(key: key);

  @override
  State<Profitability> createState() => _ProfitabilityState();
}

class _ProfitabilityState extends State<Profitability> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
      backgroundColor:  Color(0xFFFFFFFF),
      centerTitle: true,
      title: Text('Aprenda o que é rentabilidade',
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