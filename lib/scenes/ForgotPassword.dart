import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _formKey = GlobalKey<FormState>();

  bool _showPassword = false;
  bool _showConfirmPassword = false;


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFF082D0E),
      resizeToAvoidBottomInset: false,
      body: Padding(
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
                'Réinitialiser Mot de Passe',
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
Entre ton ID Client et ton numéro de téléphone pour pouvoir réinitialiser ton Mot de passe
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


                    //for validation
                    Padding(
                      padding: const EdgeInsets.only(top: 30,bottom: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(content: Text('Processing Data')),
                            );
                            Navigator.pushNamed(context, '/newpasswoed');
                          }
                        },
                        child: const Text(
                          'Réinitialiser',
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
          ],

        ),
      ),
    );
  }
}
