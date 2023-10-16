import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

 // final String svgpath = 'assets/image/logo-uni-white.svg';
  _navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 1500),(){});
    Navigator.pushReplacementNamed(context, '/introductionscreen');
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: const Color(0xFF4C3012),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(),
          Center(
              child: SafeArea(
                  child:   SvgPicture.asset(
                    'assets/image/volivolt-logo.svg',
                    semanticsLabel: 'volyvolt logo',
                    width: 150,
                    height: 150,
                  ),
              )
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child: SvgPicture.asset(
              'assets/image/logo-mini-white.svg',
              semanticsLabel: 'logo mini',
              width: 70,
              )
          )
        ],
      ),
    );
  }
}
