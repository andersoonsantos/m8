import 'package:flutter/material.dart';

class ProfileSreenState extends StatefulWidget {
  const ProfileSreenState({ Key? key }) : super(key: key);

  @override
  State<ProfileSreenState> createState() => _ProfileSreenStateState();
}

class _ProfileSreenStateState extends State<ProfileSreenState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor:  Color(0xFFFFFFFF),
      centerTitle: true,
      title: Text('Início',
      style: TextStyle(color: Color(0xFF60D45C)),
      
      ),
      
      actions: [
          IconButton(
            onPressed: null,
            icon: Icon(Icons.logout,color: Color(0xFF60D45C),),
          ),
        ],
      ),
      
    );
  }
}