import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:m8/main.dart';

                       

class ProfileSreenState extends StatefulWidget {
  const ProfileSreenState({ Key? key }) : super(key: key);

  @override
  State<ProfileSreenState> createState() => _ProfileSreenStateState();
}

class _ProfileSreenStateState extends State<ProfileSreenState> {

  final FirebaseAuth auth = FirebaseAuth.instance;

         signOut() async {
         await auth.signOut();                          
         Navigator.pushReplacement(
         context, MaterialPageRoute(builder: (context) => HomePage()));
        }
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
            onPressed: (){

            signOut();

            },
            icon: Icon(Icons.logout,color: Color(0xFF60D45C),),
          ),
        ],
      ),
      
    );
  }
}