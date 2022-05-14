import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:m8/home_screen/coin.dart';
import 'package:m8/home_screen/economy.dart';
import 'package:m8/home_screen/gold.dart';
import 'package:m8/home_screen/ipca.dart';
import 'package:m8/home_screen/liquidity.dart';
import 'package:m8/home_screen/profitability.dart';
import 'package:m8/home_screen/selic.dart';
import 'package:m8/main.dart';

class ProfileSreenState extends StatefulWidget {
  const ProfileSreenState({Key? key}) : super(key: key);

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
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        title: Text(
          'Início',
          style: TextStyle(color: Color(0xFF60D45C)),
        ),
        actions: [
          IconButton(
            onPressed: () {
              signOut();
            },
            icon: Icon(
              Icons.logout,
              color: Color(0xFF60D45C),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Divider(
                height: 10,
                thickness: 1,
                color: Color(0xFF60D45C),
                indent: 20,
                endIndent: 20),

            Container(
              height: 80,
              // width:double.infinity,
              width: 250,
              alignment: Alignment.center,
              child: TextButton(
                  child: Center(
                    child: Text(
                      'Aprenda o que é liquidez',
                      style: TextStyle(color: Color(0xFF60D45C)),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Liquidity()),
                    );
                  }),

              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(11)),
                image: DecorationImage(
                  image: AssetImage('images/liquidez.png'),

                  alignment: Alignment.centerLeft,
                  scale: 7,

                  // fit: BoxFit.scaleDown,
                ),
              ),
            ),

            //-----------------------------------------------------------------//

            Divider(
                height: 10,
                thickness: 1,
                color: Color(0xFF60D45C),
                indent: 20,
                endIndent: 20),
            Container(
                padding: const EdgeInsets.only(left: 10),
                height: 80,
                // width: double.infinity,
                width: 250,
                alignment: Alignment.center,
                child: TextButton(
                  child: Center(
                    child: Text('O que é rentabilidade',
                        style: TextStyle(color: Color(0xFF60D45C))),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Profitability()),
                    );
                  },
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(11)),
                  image: DecorationImage(
                    image: AssetImage('images/rentabilidade.png'),
                    alignment: Alignment.centerLeft,
                    scale: 11,
                    // fit: BoxFit.scaleDown,
                  ),

                  // color: Color(0xFF60D45C),
                )),
            // ---------------------------------------------------------------------------------------- //

            Divider(
                height: 10,
                thickness: 1,
                color: Color(0xFF60D45C),
                indent: 20,
                endIndent: 20),
            Container(
              height: 80,
              //width:  double.infinity,
              width: 250,
              alignment: Alignment.center,
              child: TextButton(
                  child: Center(
                    child: Text(
                      'Taxa Selic',
                      style: TextStyle(color: Color(0xFF60D45C)),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Selic()),
                    );
                  }),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(11)),
                image: DecorationImage(
                  image: AssetImage('images/selic.png'),
                  alignment: Alignment.centerLeft,
                  scale: 11,

                  // fit: BoxFit.scaleDown,
                ),
              ),
            ),

            // ---------------------------------------------------------------------------------------- //
            Divider(
                height: 10,
                thickness: 1,
                color: Color(0xFF60D45C),
                indent: 20,
                endIndent: 20),

            Container(
              height: 80,
              //width:  double.infinity,
              width: 250,
              alignment: Alignment.center,
              child: TextButton(
                  child: Center(
                    child: Text(
                      'Ipca',
                      style: TextStyle(color: Color(0xFF60D45C)),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Ipca()),
                    );
                  }),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(11)),
                image: DecorationImage(
                  image: AssetImage('images/ipca.png'),
                  alignment: Alignment.centerLeft,
                  scale: 10,

                  // fit: BoxFit.scaleDown,
                ),
              ),
            ),

            // ---------------------------------------------------------------------------------------- //
            Divider(
                height: 10,
                thickness: 1,
                color: Color(0xFF60D45C),
                indent: 20,
                endIndent: 20),
            Container(
              height: 80,
              //width:  double.infinity,
              width: 250,
              alignment: Alignment.center,
              child: TextButton(
                  child: Center(
                    child: Text(
                      '    Como economizar \n    mesmo ganhando pouco',
                      style: TextStyle(color: Color(0xFF60D45C)),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Economy()),
                    );
                  }),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(11)),
                image: DecorationImage(
                  image: AssetImage('images/economizar.png'),
                  alignment: Alignment.centerLeft,
                  scale: 10,

                  // fit: BoxFit.scaleDown,
                ),
              ),
            ),
            // ---------------------------------------------------------------------------------------- //
            Divider(
                height: 10,
                thickness: 1,
                color: Color(0xFF60D45C),
                indent: 20,
                endIndent: 20),

            Container(
              height: 80,
              //width:  double.infinity,
              width: 250,
              alignment: Alignment.center,
              child: TextButton(
                  child: Center(
                    child: Text(
                      ' Como investir em\n Ouro',
                      style: TextStyle(color: Color(0xFF60D45C)),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Gold()),
                    );
                  }),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(11)),
                image: DecorationImage(
                  image: AssetImage('images/ouro.png'),
                  alignment: Alignment.centerLeft,
                  scale: 11,

                  // fit: BoxFit.scaleDown,
                ),
              ),
            ),

            // ---------------------------------------------------------------------------------------- //
            Divider(
                height: 10,
                thickness: 1,
                color: Color(0xFF60D45C),
                indent: 20,
                endIndent: 20),
            Container(
              height: 80,
              //width:  double.infinity,
              width: 250,
              alignment: Alignment.center,
              child: TextButton(
                  child: Center(
                    child: Text(
                      'Como investir em \nMoedas',
                      style: TextStyle(color: Color(0xFF60D45C)),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Coin()),
                    );
                  }),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(11)),
                image: DecorationImage(
                  image: AssetImage('images/moedas.png'),
                  alignment: Alignment.centerLeft,
                  scale: 11,

                  // fit: BoxFit.scaleDown,
                ),
              ),
            ),

            Divider(
                height: 10,
                thickness: 1,
                color: Color(0xFF60D45C),
                indent: 20,
                endIndent: 20),
          ],
        )),
      ),
    );
  }
}
