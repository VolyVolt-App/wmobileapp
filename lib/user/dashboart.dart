import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:volyvolt/user/dashboardLayout.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}
class MenuItem{
  const MenuItem(this.iconData,this.text);
  final IconData iconData;
  final String text;
}

class _DashboardState extends State<Dashboard> {
  int index = 0;
  
  final menuItemList= const <MenuItem>[
    MenuItem(Icons.dashboard, 'dashboard'),
    MenuItem(Icons.home, 'home'),
    MenuItem(Icons.home, 'home'),
  ];

  final buildBody = const <Widget>[DashHome(),DashHome(),DashHome(),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          'assets/image/logo-mini-white.svg',
          semanticsLabel: 'logo mini',
          width: 110,
        ),
        backgroundColor: Color(0xFF082D0E),
        leading: IconButton(
          icon: const Icon(
            Icons.account_circle_sharp,
            color: Colors.white,
          ),
          onPressed: (){
            Navigator.pushNamed(context, '/profilesetting');
          },
        ),
        centerTitle: true,
          actions: [
            IconButton(
              icon: const Icon(
                  Icons.notifications,
                color: Colors.white,
                //size: 100,
              ),
              tooltip: 'Comment Icon',
              onPressed: () {},
            ),
          ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: index,
        onTap: (x){
          setState(() {
            index=x;
          });
        },
        elevation: 16.0,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black38,
        selectedItemColor: Colors.green,
        items: menuItemList.map((MenuItem menuItem) => BottomNavigationBarItem(
            icon: Icon(menuItem.iconData),
            label: menuItem.text,
        )).toList(),
      ),
      body: Text('feno'),
    );
  }
}
