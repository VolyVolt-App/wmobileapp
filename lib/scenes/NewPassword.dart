import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
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
                'Créer un nouveau Mot de Passe',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF8BBC1F),
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
            Text(

                '''Maintenant tu peux créer ton nouveau mot de passe, n’oublies pas d’utiliser un mot de passe sécurisé!
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
