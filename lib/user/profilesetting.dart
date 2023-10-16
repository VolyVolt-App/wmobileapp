import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileSetting extends StatefulWidget {
  const ProfileSetting({super.key});

  @override
  State<ProfileSetting> createState() => _ProfileSettingState();
}

class _ProfileSettingState extends State<ProfileSetting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Align(
          alignment: Alignment.centerRight,
          child: SvgPicture.asset(
            'assets/image/logo-mini-white.svg',
            semanticsLabel: 'logo mini',
            width: 90,
          ),
        ),
        backgroundColor: Color(0xFF082D0E),
          iconTheme: IconThemeData(
            color: Colors.white
          ),
        ),

       backgroundColor: Color(0xFF082D0E),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Center(
            child: Column(
              children: [
                Icon(
                  Icons.account_circle_sharp,
                  color: Colors.white,
                  size: 100.0,
                ),
                Text(
                  'Nom prenom',
                  style: TextStyle(
                    color: Color(0xFF8BBC1F),
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                  ),
                ),
            Text(
              'ID Client: W22045',
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
              ),
            ),
              ],
            ),
          ),

          //start address
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0,10,10,0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'Tour Redland Orange, Rue Renivohitra',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 20,
                    )
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(
              color: Colors.white54,
            ),
          ),
          //end address

          //start phonenumber
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0,0,10,0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  '+261345689456',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 20,
                    )
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(
              color: Colors.white54,
            ),
          ),
          //end phonenumber

          //start modifier mot de passe
          Padding(
            padding: const EdgeInsets.fromLTRB(10.0,0,10,0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  'modifier mot de pass',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                IconButton(
                    onPressed: (){},
                    icon: Icon(
                      Icons.edit,
                      color: Colors.white,
                      size: 20,
                    )
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(
              color: Colors.white54,
            ),
          ),
          //end modifier mot de pass



        ],
      ),
    );
  }
}
