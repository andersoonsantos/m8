import 'dart:ui';
import 'package:flutter/material.dart';


class LicoesPage extends StatefulWidget {
  const LicoesPage({ Key? key }) : super(key: key);

  @override
  State<LicoesPage> createState() => _LicoesPageState();
}

class _LicoesPageState extends State<LicoesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        title: Text('Lições',
      style: TextStyle(color: Color(0xFF60D45C)),

      ),
      
      ),
     
        body: Padding(
          
          padding: const EdgeInsets.all(20.0),
          child: Center(
           child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, 
      
  children: <Widget>[
    Divider(height: 10,thickness: 1, color: Color(0xFF60D45C),indent: 50,endIndent: 50),
    
    Container(
    
      height: 78,
      // width:double.infinity,
      width: 200,
      alignment: Alignment.center,
      child: TextButton(
          child: Center(
            child: Text('Lição 1', style: TextStyle(color: Color(0xFF60D45C)),),
          ),
            onPressed: (){}
      ),

          decoration: BoxDecoration(
         
          borderRadius: BorderRadius.all(Radius.circular(11)),
           image: DecorationImage(
     
          image:AssetImage('images/licao1.png'),
               
             alignment: Alignment.centerLeft, 
              scale: 11,
             
             // fit: BoxFit.scaleDown,
              
      ) ,
    
          ),
          

    ),

    //-----------------------------------------------------------------// 

    Divider(height: 10,thickness: 1, color: Color(0xFF60D45C),indent: 80,endIndent: 80),
    Container(
      padding: const EdgeInsets.only(left: 10),
       height: 78,
      // width: double.infinity,
       width: 200,
       alignment: Alignment.center,
      child: TextButton(
          child: Center(
            
            child: Text('Lição 2', style: TextStyle(color: Color(0xFF60D45C))),
          ),
            onPressed: (){ },

      ),
      decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(11)),
      image: DecorationImage(
          image:AssetImage('images/licao2.png'),
             alignment: Alignment.centerLeft, 
              scale: 10,
             // fit: BoxFit.scaleDown,
      ) ,
       
      
     
     // color: Color(0xFF60D45C),
          )
    ),
    // ---------------------------------------------------------------------------------------- //

    Divider(height: 10,thickness: 1, color: Color(0xFF60D45C),indent: 80,endIndent: 80),
    Container(
      
       height: 78,
       //width:  double.infinity,
       width: 200,
      alignment: Alignment.center,
      child: TextButton(
          child: Center(
            child: Text('Lição 3', style: TextStyle(color: Color(0xFF60D45C)),),
          ),
            onPressed: (){}
                 ),
      decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(11)),
      image: DecorationImage(
      image:AssetImage('images/licao3.png'),
      alignment: Alignment.centerLeft, 
       scale: 10,
       
             // fit: BoxFit.scaleDown,
      ),
      
          ),
    ),
     Divider(height: 10,thickness: 1, color: Color(0xFF60D45C),indent: 50,endIndent: 50),
  ],
)


          ),
        ),
      
      


    );
  }
}