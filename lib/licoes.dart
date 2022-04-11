
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
      )
    );
  }
}