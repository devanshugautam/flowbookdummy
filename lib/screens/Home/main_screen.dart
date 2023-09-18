// ignore_for_file: avoid_print
import 'package:flutter/material.dart';

// Local import
import '../../services/get_images.dart';
// screens
import '../SideMenu/app_drawer.dart';
import '../Roadmap/road_map.dart';
import './home.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  GetImage imageObj = GetImage();
  // Home({super.key});
  int _selectedIndex = 0;
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      key: _drawerKey,
      // App Bar
      appBar: AppBar(
        // scrolledUnderElevation: 4.0,
        // shadowColor: Theme.of(context).shadowColor,
        leading: InkWell(
          onTap: () => _drawerKey.currentState?.openDrawer(),
          child: Icon(Icons.menu, color: Colors.black87),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(imageObj.getImage('search_ques')),
            iconSize: 30.0,
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(imageObj.getImage('scan')),
            iconSize: 30.0,
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(imageObj.getImage('shipping_color')),
            iconSize: 30.0,
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(imageObj.getImage('logout')),
            iconSize: 30.0,
          ),
        ],
      ),
      //  drawer
      drawer: AppDrawer(imageObj: imageObj),
      // Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // iconSize: ,
        // fixedColor: Colors.blue,
        // home_white
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              imageObj.getImage('home'),
              color: Colors.grey,
              height: 30,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              imageObj.getImage('courses_footer_grey'),
              height: 30,
            ),
            label: "Courses",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              imageObj.getImage('roadmap_footer_grey'),
              height: 30,
            ),
            label: "Roadmap",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              imageObj.getImage('talent_footer_grey'),
              height: 30,
            ),
            label: "Talent",
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              imageObj.getImage('community_footer_grey'),
              height: 30,
            ),
            label: "Community",
          ),
        ],
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black,
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.purple.shade900,
        iconSize: 30.0,
        // selectedIconTheme: IconThemeData.fallback(),
        // selectedFontSize: 15.0,
        onTap: (index) => {
          // print("--> ${index}"),
          setState(() {
            if (index == 2) {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Roadmap()),
              );
            }
            _selectedIndex = index; // Update the selected index
          })
        },
        // onTap: _onItemTapped,
      ),
      //  Body
      body: const Home(),
    ));
  }
}
