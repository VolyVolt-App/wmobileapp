import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Singin extends StatefulWidget {
  const Singin({super.key});

  @override
  State<Singin> createState() => _SinginState();
}

class _SinginState extends State<Singin> {

  final _formKey = GlobalKey<FormState>();

  bool _showPassword = false;

  bool _checkSession = false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFF082D0E),
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Flex(
          direction: Axis.vertical,
          children: [
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                Image(
                    image: AssetImage('assets/image/maison22.png'),
                    opacity: AlwaysStoppedAnimation(.3),

                ),
                SvgPicture.asset(
                  'assets/image/volivolt-logo.svg',
                  semanticsLabel: 'volyvolt logo',
                  width: 150,
                  height: 150,
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 10,bottom: 10),
              child: Text(
                'Se connecter',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF8BBC1F),
                  fontWeight: FontWeight.bold,
                  fontSize: 17,
                ),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      '''
Bonjour,
Ça fait longtemps! Connecte-toi pour poursuivre l’aventure avec VolyVolt et suivre de près tes cultures et surtout l’énergie au sein du foyer !
                    ''',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 12,
                      )
                  ),
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
                              ),
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF)
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
                              padding: const EdgeInsets.fromLTRB(8.0,5,0,8),
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
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                            //END start label Numéro de téléphone

                            //start label form Mot de passe
                            Padding(
                              padding: const EdgeInsets.fromLTRB(8.0,5,0,8),
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
                                ),
                              ),
                              style: TextStyle(
                                  color: Color(0xFFFFFFFF)
                              ),
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                            //END start label Numéro de téléphone

                            //for check box and forgotten password
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Row(
                                  children: [
                                    Checkbox(
                                        value: _checkSession,
                                        onChanged: (bool? value){
                                          if(value != null){
                                            setState(() {
                                              _checkSession=value;
                                            });
                                          }
                                    }
                                    ),
                                    Text(
                                      'Se souvenir de moi',
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                                TextButton(
                                    onPressed: (){
                                      Navigator.pushNamed(context, '/forgotpassword');
                                    },
                                    child: Text(
                                        'Mot de passe oublier'
                                    )
                                )
                              ],
                            ),
                            //end for check box and forgotten password

                            //for validation
                            Padding(
                              padding: const EdgeInsets.only(top: 30,bottom: 10),
                              child: ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(content: Text('Processing Data')),
                                    );
                                    Navigator.pushReplacementNamed(context, '/dashboard');
                                    }
                                  },
                                child: const Text(
                                  'Se connecter',
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
            //text farany
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Je n’ai pas encore de compte.',
                  style: TextStyle(
                      color: Colors.white
                  ),
                ),
                TextButton(
                    onPressed: (){
                      Navigator.pushReplacementNamed(context, '/signup');
                    },
                    child: Text(
                        'Créer un Compte'
                    )
                ),
              ],
            )
          ],
        ),
      )
    );
  }
}
