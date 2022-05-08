import 'package:flutter/material.dart';

class SobrePage extends StatefulWidget {
  const SobrePage({ Key? key }) : super(key: key);

  @override
  State<SobrePage> createState() => _SobrePageState();
}

class _SobrePageState extends State<SobrePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Color(0xFFFFFFFF),
        centerTitle: true,
        title: Text('Sobre',
      style: TextStyle(color: Color(0xFF60D45C)),

      ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SafeArea(
                  child: Center(
          child: Column(
            
           mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
         
          children: [ 
                Image(image: AssetImage("images/sobre.png"), height: 110),
              // Padding(padding: const EdgeInsets.symmetric(vertical: 130.0)), 
               Text('\nM8\n\n',style: const TextStyle(fontWeight: FontWeight.bold),),
               Text("           Nossa tarefa e transformar a vida financeira"
                     "das pessoas para melhor. E para isso acontecer,"
                    " nada é mais importante do que a educação.\n\n"
                    "           Pensando nisso, criamos um app pensando"
                    " em você. Sabemos que a forma como consumimos "
                    "um conteúdo é tão importante quanto o conteúdo"
                    "em si.\n\n" 
                    "          Por isso, o aplicativo foi desenvolvido pensando"
                    "em quem quer se dedicar às suas finanças, mas"
                    "precisa daquele impulso inicial e de uma"
                    "melhor organização dos temas." , textDirection: TextDirection.ltr,textAlign: TextAlign.justify),
                      
         ],

          ),
),

        ),
      ),
      
    );
  }
}