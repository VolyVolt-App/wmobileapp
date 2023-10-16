import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Singup extends StatefulWidget {
  const Singup({super.key});

  @override
  State<Singup> createState() => _SingupState();
}

class _SingupState extends State<Singup> {

  final _formKey = GlobalKey<FormState>();
  
  bool _showPassword = false;
  bool _showConfirmPassword = false;
  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFF082D0E),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 60, 10, 10),
          child: Flex(
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Center(
                  child: SvgPicture.asset(
                    'assets/image/volivolt-logo.svg',
                    semanticsLabel: 'volyvolt logo',
                    width: 70,
                    height: 70,
                  )
              ),
              Container(
                padding: EdgeInsets.only(top: 10,bottom: 10),
                child: Text(
                  'Créer un Compte',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF8BBC1F),
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
              ),
              Text(
                '''
Bonjour,
Merci d’avoir choisi VolyVolt comme solution énérgétique, plus qu’un pas vers l’autonomie energétique. Crées ton compte pour poursuivre !
                ''',
                style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 12,
                )
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [

                      //start label form id client
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0,5,0,8),
                        child: Text(
                          'ID Client',
                          style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 13
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          isDense: true,
                          contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          //hintStyle: TextStyle(
                          //    color: Color(0xFFFFFFFF)
                          //),
                        ),
                        style: TextStyle(
                            color: Color(0xFFFFFFFF)
                          //height: 1.0
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      //END start label form id client

                      //start label form address
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0,15,0,8),
                        child: Text(
                          'Adresse',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 13
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          isDense: true,
                          contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          hintStyle: TextStyle(
                              color: Color(0xFFFFFFFF)
                          ),
                        ),
                        style: TextStyle(
                            color: Color(0xFFFFFFFF)
                          //height: 1.0
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      //END start label form address

                      //start label form Numéro de téléphone
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0,15,0,8),
                        child: Text(
                          'Numéro de téléphone',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 13
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          isDense: true,
                          contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        ),
                        style: TextStyle(
                            color: Color(0xFFFFFFFF)
                          //height: 1.0
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      //END start label form Numéro de téléphone

                      //start label form Mot de passe
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0,15,0,8),
                        child: Text(
                          'Mot de passe',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 13
                          ),
                        ),
                      ),
                      TextFormField(
                        obscureText: !_showPassword,
                        decoration:  InputDecoration(
                          border: OutlineInputBorder(),
                          isDense: true,
                          contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                          suffixIcon: IconButton(
                            icon: _showPassword? Icon(Icons.visibility): Icon(Icons.visibility_off),
                            onPressed: (){
                              setState(() {
                                _showPassword = !_showPassword;
                              });
                            },
                          )
                              
                        ),
                        style: TextStyle(
                            color: Color(0xFFFFFFFF)
                          //height: 1.0
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      //END start label form Mot de passe

                      //start label form Confirm Mot de passe
                      Padding(
                        padding: const EdgeInsets.fromLTRB(8.0,15,0,8),
                        child: Text(
                          'Confirmer Mot de passe',
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 13
                          ),
                        ),
                      ),
                      TextFormField(
                        obscureText: !_showConfirmPassword,
                        decoration:  InputDecoration(
                            border: OutlineInputBorder(),
                            isDense: true,
                            contentPadding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                            suffixIcon: IconButton(
                              icon: _showConfirmPassword? Icon(Icons.visibility): Icon(Icons.visibility_off),
                              onPressed: (){
                                setState(() {
                                  _showConfirmPassword = !_showConfirmPassword;
                                });
                              },
                            )

                        ),
                        style: TextStyle(
                            color: Color(0xFFFFFFFF)
                          //height: 1.0
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          }
                          return null;
                        },
                      ),
                      //END start label form Confirm Mot de passe

                      //for validation
                      Padding(
                        padding: const EdgeInsets.only(top: 30,bottom: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text('Processing Data')),
                              );
                            }
                          },
                          child: const Text(
                              'Créer un compte',
                            style: TextStyle(color: Color(0xFFFFFFFF)),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(Color(0xFF8BBC1F)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),


              //text farany
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      'J’ai déjà un compte.',
                    style: TextStyle(
                      color: Colors.white
                    ),
                  ),
                  TextButton(
                      onPressed: (){
                        Navigator.pushReplacementNamed(context, '/signin');
                      },
                      child: Text(
                        'Se connecter'
                      )
                  )
                ],
              )
            ],

          ),
        ),
      ),
    );
  }
}
