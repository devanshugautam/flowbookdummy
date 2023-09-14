// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
// import 'dart:async';

// Local import
import '../../services/get_images.dart';
// screens
import './flow_book_talent_board.dart';
import './row_col_4_set.dart';
import '../SideMenu/app_drawer.dart';
import './testimonials_heading.dart';
import './copy_rights.dart';
import './single_column.dart';
import './home_screen_section_1.dart';
import './score_bord_home_section2.dart';
import './home_screen_section_3.dart';
import '../Roadmap/road_map.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GetImage imageObj = GetImage();
  // Home({super.key});
  int _selectedIndex = 0;
  String _inputText = '';
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  List<Widget> buildItems(bool isTestimonials) {
    return isTestimonials
        ? [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.deepPurple.shade900,
                    width: 1.2,
                    style: BorderStyle.solid,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(1.0), //color of shadow
                      spreadRadius: 0.1, //spread radius
                      blurRadius: 1.9, // blur radius
                      offset: Offset(0, 2),
                    ),
                  ],
                  color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Awesome App.. Learnt so much from it",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.deepPurple.shade900,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 15),
                    child: Text(
                        "Abudance of knowledge and practice modes make it one of the best apps in the market for online learning."),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          imageObj.getImage('profile_placeholder'),
                          height: 20,
                        ),
                        Text(" The test user "),
                        Text(" | "),
                        Text(" 2 years ago")
                      ],
                    ),
                  )
                ],
              ),
            ),
          ]
        : [
            Image.asset(imageObj.getImage('flowbook_header_1')),
            Image.asset(imageObj.getImage('flowbook_header_2')),
            Image.asset(imageObj.getImage('flowbook_header_3')),
            Image.asset(imageObj.getImage('flowbook_header_4')),
            Image.asset(imageObj.getImage('flowbook_header_5')),
          ];
  }

  final List<Widget> items = [];

  @override
  void initState() {
    super.initState();
    items.addAll(buildItems(
        false)); // Initialize the items list with the result of buildItems()
  }

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
          print("--> ${index}"),
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
      body: SingleChildScrollView(
        child: Container(
          // margin: const EdgeInsets.only(bottom: 2),
          child: Column(
            children: [
              // ============= 1st section ============= //
              HomeScreenSection1(imageObj: imageObj),
              // ============= 2nd section ============= //
              const ScoreBoardHomeSection2(),
              // ============= 3rd section ============= //
              HomeScreenSection3(imageObj: imageObj),
              // ============= 4th section ============= //
              RowCol4Set(
                imageObj: imageObj,
                variableA: 'Community',
                variableAImage: 'community',
                variableB: 'Status',
                variableBImage: 'status_board',
                variableA1: 'Discussion',
                variableA1Image: 'discussions',
                variableB1: 'TextBook',
                variableB1Image: 'textbook',
                isBorder: true,
              ),
              // ============= 5th section ============= //
              Container(
                margin: const EdgeInsets.only(top: 18.0),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    // class notes
                    SingleColumn(
                      imageObj: imageObj,
                      imageName: 'notes',
                      heading: 'Class Notes',
                      desc: 'Check Class Notes Assigned To Your Account',
                      isBorder: true,
                    ),
                    // reviews
                    SingleColumn(
                      imageObj: imageObj,
                      imageName: 'discussions',
                      heading: 'Reviews',
                      desc: 'Check Reviews / Observation From Teachers',
                      isBorder: true,
                    ),
                    //  Requests
                    SingleColumn(
                      imageObj: imageObj,
                      imageName: 'pre_book',
                      heading: 'Requests',
                      desc:
                          'Send Leave Application / TC Application \nRequest To School',
                      isBorder: true,
                    ),
                    // Attendance Record
                    SingleColumn(
                      imageObj: imageObj,
                      imageName: 'calendar',
                      heading: 'Attendance Record',
                      desc: 'Check Your Daily Attendance',
                      isBorder: true,
                    ),
                    // Library Documents
                    SingleColumn(
                      imageObj: imageObj,
                      imageName: 'personal_notes',
                      heading: 'Library Documents',
                      desc: 'See Library Documents From School',
                      isBorder: true,
                    ),
                    // School Events
                    SingleColumn(
                      imageObj: imageObj,
                      imageName: 'alerts',
                      heading: 'School Events',
                      desc: 'See Latest Events From School',
                      isBorder: true,
                    ),
                  ],
                ),
              ),
              // ============= 6th section ============= //
              FlowBookTalentBoard(imageObj: imageObj),
              // ============= 7th section ============= //
              Container(
                margin: EdgeInsets.only(top: 15.0),
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imageObj.getImage('landing_banner_3')),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 68, left: 50),
                      child: Image.asset(
                        imageObj.getImage('mascot_logo_1'),
                        height: 50,
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(top: 68, right: 15),
                      child: Text(
                        "Fun Section",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
              // ============= 8th section ============= //
              RowCol4Set(
                imageObj: imageObj,
                variableA: 'Games',
                variableAImage: 'games',
                variableB: 'Podcasts',
                variableBImage: 'podcast',
                variableA1: 'Gallery',
                variableA1Image: 'gallery_items',
                variableB1: 'Articles',
                variableB1Image: 'news_articles',
                isBorder: true,
              ),
              // ============= 9th section ============= //
              Container(
                margin: EdgeInsets.only(top: 15.0),
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imageObj.getImage('landing_banner_4')),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 68, left: 15),
                      child: Text(
                        "For Users",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(top: 68, right: 50),
                      child: Image.asset(
                        imageObj.getImage('mascot_logo_1'),
                        height: 50,
                      ),
                    ),
                  ],
                ),
              ),
              // ============= 10th section ============= //
              RowCol4Set(
                imageObj: imageObj,
                variableA: 'FAQs',
                variableAImage: 'general_knowledge',
                variableB: 'Complaints',
                variableBImage: 'debate',
                variableA1: 'Doubts',
                variableA1Image: 'doubts',
                variableB1: 'Feedbacks',
                variableB1Image: 'test1',
                isBorder: true,
              ),
              // ============= 11th section ============= //
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 15),
                height: 200, // Set the container's height as needed
                child: CarouselSlider(
                  items: items,
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 17 / 9,
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                  ),
                ),
              ),
              // ============= 12th section ============= //
              Container(
                margin: EdgeInsets.only(top: 15.0),
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imageObj.getImage('landing_banner_3')),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 68, left: 50),
                      child: Image.asset(
                        imageObj.getImage('mascot_logo_1'),
                        height: 50,
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(top: 68, right: 15),
                      child: Text(
                        "Recharge",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ),
              // ============= 13th section ============= //
              Container(
                margin: EdgeInsets.only(top: 15.0, left: 5.0, right: 7.0),
                child: Column(
                  children: [
                    // Recharge Your Account
                    SingleColumn(
                      imageObj: imageObj,
                      imageName: 'shipping_color',
                      heading: 'Recharge Your Account',
                      desc:
                          'Tap here to rechagre your account with easy \nto use learning packs.',
                      isBorder: false,
                    ),
                    // Book Free Counselling
                    SingleColumn(
                      imageObj: imageObj,
                      imageName: 'user_answers',
                      heading: 'Book Free Counselling',
                      desc:
                          'Tap here to rechagre your account with easy \nto use learning packs.',
                      isBorder: false,
                    ),
                  ],
                ),
              ),
              // ============= 14th section ============= //
              Container(
                margin: EdgeInsets.only(top: 15.0),
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imageObj.getImage('landing_banner_4')),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 68, left: 15),
                      child: Text(
                        "Join Others\nIn Community",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(top: 68, right: 50),
                      child: Image.asset(
                        imageObj.getImage('mascot_logo_1'),
                        height: 50,
                      ),
                    ),
                  ],
                ),
              ),
              // ============= 15th section ============= //
              Container(
                margin: EdgeInsets.only(top: 15.0, left: 8, right: 10),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 240,
                      child: TextField(
                        onChanged: (text) {
                          setState(() {
                            _inputText = text;
                          });
                        },
                        decoration: InputDecoration(
                          labelText: 'Input Text',
                          labelStyle: TextStyle(
                            color: Colors.blue, // Color of the label text
                          ),
                          // focusedBorder: UnderlineInputBorder(
                          //   borderSide: BorderSide(
                          //     color: Colors
                          //         .blue, // Color of the underline when focused
                          //   ),
                          // ),
                        ),
                      ),
                    ),
                    Expanded(
                        child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: Image.asset(
                              imageObj.getImage('choose_from_mic'),
                              height: 35,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Image.asset(
                              imageObj.getImage('search_question_white'),
                              height: 35,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            child: Image.asset(
                              imageObj.getImage('send_post_white'),
                              height: 35,
                            ),
                          ),
                        ),
                      ],
                    )),
                  ],
                ),
              ),
              // ============= 16th section ============= //
              SingleColumn(
                imageObj: imageObj,
                imageName: 'scan_image',
                heading: 'Scan Image, Get Solutions',
                desc:
                    'Lool for answers by scanning book questions\nusing your camera.',
                isBorder: false,
              ),
              // ============= 17th section ============= //
              RowCol4Set(
                imageObj: imageObj,
                variableA: 'Treading\nQuestions',
                variableAImage: 'important_questions',
                variableB: 'Question By\nYou',
                variableBImage: 'questions_by_user',
                variableA1: 'Ask Doubt',
                variableA1Image: 'raise_doubt',
                variableB1: 'Past\nSearches',
                variableB1Image: 'past_searches',
                isBorder: false,
              ),
              // ============= 18th section ============= //
              TestimonialsHeading(imageObj: imageObj),
              // ============= 19th section ============= //
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 15),
                height: 200, // Set the container's height as needed
                child: CarouselSlider(
                  items: buildItems(true),
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 17 / 9,
                    enlargeCenterPage: true,
                    viewportFraction: 1,
                  ),
                ),
              ),
              // ============= 20th section ============= //
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 18.0, left: 10, right: 10),
                child: Text(
                  "Help Us Spread Flowbook",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.deepPurple.shade900,
                  ),
                ),
              ),
              // ============= 21st section ============= //
              RowCol4Set(
                imageObj: imageObj,
                variableA: 'Share App',
                variableAImage: 'share_app',
                variableB: '',
                variableBImage: '',
                variableA1: 'Refer A Friend',
                variableA1Image: 'refer',
                variableB1: '',
                variableB1Image: '',
                isBorder: false,
              ),
              // ============= 22nd section ============= //
              const CopyRights(),
              // ============= 22nd section ============= //
              Container(
                // alignment: Alignment.center,
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 55.0),
                child: Image.asset(
                  imageObj.getImage('footer2'),
                  fit: BoxFit.fill,
                  // height: 47,
                ),
              )
              //  main column end
            ],
          ),
        ),
      ),
    ));
  }
}
