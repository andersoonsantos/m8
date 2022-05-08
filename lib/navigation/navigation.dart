import 'package:flutter/material.dart';
import 'package:m8/home.dart';
import 'package:m8/lessons.dart';
import 'package:m8/on.dart';

class NavegacaoPage extends StatefulWidget {
  const NavegacaoPage({ Key? key }) : super(key: key);

  @override
  State<NavegacaoPage> createState() => _NavegacaoPageState();
}

class _NavegacaoPageState extends State<NavegacaoPage> {
  int paginaAtual  = 0;
  late PageController pc;

@override
  void initState() {
    super.initState();
    pc = PageController(initialPage: paginaAtual);
  }

  setPaginaAtual(pagina){
    setState(() {
      paginaAtual = pagina;
    });

  }


  @override
  Widget build(BuildContext context) {
       return Scaffold(
        
          body:  PageView(
          controller: pc ,
          children: [
          ProfileSreenState(),
          LicoesPage(),
          SobrePage(),
         
          
        ],
        onPageChanged: setPaginaAtual,
      ),
   bottomNavigationBar: BottomNavigationBar(
        currentIndex:  paginaAtual,
    
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.roofing_rounded, color: Color(0xFF60D45C),), label: (''), ),
          BottomNavigationBarItem(icon: Icon(Icons.rule_sharp,color: Color(0xFF60D45C)), label: ('')),
          BottomNavigationBarItem(icon: Icon(Icons.sd_card_alert_outlined,color: Color(0xFF60D45C) ), label: ('')),
        ],
        onTap: (pagina){
          pc.animateToPage(pagina, duration:Duration(milliseconds: 300), curve: Curves.ease);
        },
        

      ),
   

    );
  }
}