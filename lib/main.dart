import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:m8/home.dart';
import 'package:m8/navigation/navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    
    );
  }
}
// -------------------------------------------- //

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

//inicializar Firebase App
Future<FirebaseApp> _initializeFirebase() async{
FirebaseApp firebaseApp = await Firebase.initializeApp();
return firebaseApp;

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(

      
        future: _initializeFirebase(),
        builder: (context, snapshot){
          if(snapshot.connectionState == ConnectionState.done){
            return LoginScreen();
          }
          return  const Center(child: CircularProgressIndicator()
          );
        },
        ),
    
      );
  }
}


class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

 // Função Login
 static Future<User?> loginUsingEmailPassword({required String email, required String password,required BuildContext context}) async{
   FirebaseAuth auth = FirebaseAuth.instance;
   User? user;
   try{
     UserCredential userCredential = await auth.signInWithEmailAndPassword(email: email, password: password);
     user = userCredential.user;
   }on FirebaseAuthException catch (e){
     if (e.code == 'user-not-found'){
      ScaffoldMessenger.of(context)
      .showSnackBar(
          const SnackBar(
            content: Text('O usuário informado não está cadastrado.'),
            backgroundColor: Color(0xFF60D45C),
       ) );

       //print("Usuário não encontrado para esse e-mail");
     }else if (e.code == 'invalid-email') {
       ScaffoldMessenger.of(context)
      .showSnackBar(
          const SnackBar(
            content: Text('E-mail informado é inválido.'),
            backgroundColor: Color(0xFF60D45C),
       ) );
    //'O domínio do e-mail informado é inválido.'
  } else if (e.code == 'wrong-password') {
     ScaffoldMessenger.of(context)
      .showSnackBar(
          const SnackBar(
            content: Text('A senha informada está incorreta.'),
            backgroundColor: Color(0xFF60D45C),
       ) );
    //'A senha informada está incorreta.'
  }
  else {
  ScaffoldMessenger.of(context)
      .showSnackBar(
           SnackBar(
             
            content: Text('Preencha os dados corretamente.'),
            backgroundColor: Color(0xFF60D45C),
            duration: const Duration(milliseconds: 1500),
                            
          
            ),
            );       
  } 
   }
  return user;
 }
 
  @override
  Widget build(BuildContext context) {
    TextEditingController _emailControler = TextEditingController();
    TextEditingController _passwordControler = TextEditingController();
    return Padding(
      //padding: const EdgeInsets.all(30.0),
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,           
        children: <Widget> [
          
         Image(image: AssetImage("images/logo.png"), height: 75),
         Padding(padding: const EdgeInsets.all(16.0,)),
      
            
      
           TextField(
            controller: _emailControler,
            keyboardType: TextInputType.emailAddress,
            decoration: const  InputDecoration(
            labelText: "E-mail",    

            labelStyle: TextStyle(
           color: Colors.black45,
           fontWeight:  FontWeight.w500,
           fontSize: 15,

           ),



            prefixIcon: Icon(Icons.mail, color:Color(0xFF60D45C)),
            
            focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
            color: Color(0xFF60D45C),
            //width: 1,
          )
          ), 
            ),
          ), 
          /*const SizedBox(height: 1.0, 
                 ),*/
         TextField(
            controller: _passwordControler,
            obscureText: true,
            decoration:  const InputDecoration(
              labelText: "Senha",
              labelStyle: TextStyle(
           color: Colors.black54,
           fontWeight:  FontWeight.w500,
           fontSize: 15,
           ),
              prefixIcon: Icon(Icons.lock, color:Color(0xFF60D45C)),
              focusedBorder: UnderlineInputBorder(
              borderSide: BorderSide(
            color: Color(0xFF60D45C),
            //width: 1,
          )),
          ),
          ),
           const SizedBox(height: 14.0,
        
         ),
          /* const Text(
            "Don't Remember your Password", 
            style: TextStyle(color: Color(0xFF60D45C)),
          ), */
         const SizedBox(height: 8.0, 
          ),
          Container(
           width: double.infinity,
              child: RawMaterialButton(
              fillColor: Color(0xFF60D45C),
              elevation: 0.0,
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)) ,
              onPressed: () async {
                User? user = await loginUsingEmailPassword(email: _emailControler.text, password: _passwordControler.text, context: context);
                print(user);
                if (user != null){
                  Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(context)=> NavegacaoPage() ));

                }

              },
               child: const Text(
                 "Entrar",
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 20.0,
                    fontWeight:  FontWeight.w800,
                    ),
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
