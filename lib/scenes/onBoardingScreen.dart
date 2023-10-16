import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
        rawPages: [

          //page1
          Scaffold(
            backgroundColor: const Color(0xFF082D0E),
            body: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/image/onboard1.png',

                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      "ENERGIE VERTE  ET  AGRICULTURE  DURABLE",
                        style: TextStyle(
                        color: Color(0xFF8BBC1F),
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      'Imaginez  un  avenir  où  vous  pouvez produire  votre  propre  énergie  verte directement  à  partir  de  vos  cultures.',
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Construisons un futur où l'agriculture et l'énergie s'unissent pour créer une véritable dynamique positive, pour les familles rurales et pour notre planète.",
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //end page1

          //page2
          Scaffold(
            backgroundColor: const Color(0xFF082D0E),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/image/onboarding2.png',

                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 11),
                  child: Text(
                    "« Du champ à votre prise : L'Énergie Verte, cultivée par vous et pour vous ! »",
                    style: TextStyle(
                      color: Color(0xFFFFBE18),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 10),
                  child: Text(
                    "Éclairez votre quotidien avec une source d'électricité durable et abordable, tout en boostant la productivité de vos champs grâce à VolyVolt.",
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 12,
                    ),
                  ),
                ),
              ],
            ),
          ),
          //end page2

          //page3
          Scaffold(
            backgroundColor: const Color(0xFF082D0E),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/image/maison22.png',

                ),

                //start objectif1
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/image/image29.png',
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          width: 230,
                          child: Text(
                            'Première solution à double tranchant: agriculture et énergie ',
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
                //start objectif1

                //start objectif2
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 230,
                          child: Text(
                            'Génération d’énergie autonome  à partir de vos propres cultures',
                            style: TextStyle(
                              color: Color(0xFF8BBC1F),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Image.asset(
                          'assets/image/image32.png',
                        ),
                      ]
                  ),
                ),
                //start objectif2

                //start objectif3
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/image/image31.png',
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 15),
                          width: 230,
                          child: Text(
                            "Optimisation de l'agriculture  grâce à l'intelligence artificielle,",
                            style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ]
                  ),
                ),
                //start objectif3

                //start objectif4
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0,12,12,30),
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: 230,
                          child: Text(
                            'Génération d’énergie autonome  à partir de vos propres cultures',
                            style: TextStyle(
                              color: Color(0xFF8BBC1F),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Image.asset(
                          'assets/image/image30.png',
                        ),
                      ]
                  ),
                ),
                //start objectif4

                //button farany
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/signin');
                      },
                      child: const Text(
                        'Se connecter',
                        style: TextStyle(color: Color(0xFF8BBC1F)),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color(0xFFFFFFFF)),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/signup');
                      },
                      child: const Text(
                        'Créer un Compte',
                        style: TextStyle(color: Color(0xFFFFFFFF)),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Color(0xFF8BBC1F)),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          ),
          //end page3

        ],
        onDone: () {
          // When done button is press
        },
        showNextButton: true,

        showDoneButton: false,
        showSkipButton: true,
        dotsDecorator: getDotsDecorator(),
        globalBackgroundColor: const Color(0xFF082D0E),

        next: const Icon(Icons.arrow_forward_ios),

        back: const Icon(Icons.arrow_back),
        done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
        skip: const Text("Passer", style: TextStyle(fontWeight: FontWeight.w600)),
    );
  }



  //method to customize the dots style
  DotsDecorator getDotsDecorator() {
    return const DotsDecorator(
      spacing: EdgeInsets.symmetric(horizontal: 2),
      activeColor: Color(0xFF8BBC1F),
      color: Colors.grey,
      activeSize: Size(50, 10),
      activeShape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
      ),
    );
  }
}
