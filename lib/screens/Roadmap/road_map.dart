import 'package:flutter/material.dart';
import '../../services/get_images.dart';

class Roadmap extends StatefulWidget {
  const Roadmap({super.key});

  @override
  _RoadmapState createState() => _RoadmapState();
}

class ContainerData {
  final Color colorA;
  final Color colorB;
  final String heading;
  final String imageName;

  ContainerData(this.colorA, this.heading, this.imageName, this.colorB);
}

class _RoadmapState extends State<Roadmap> {
  GetImage imageObj = GetImage();
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
  var isBorder = false;

  final List<ContainerData> containers = [
    ContainerData(
      Color.fromRGBO(231, 108, 48, 1),
      'Academic Roadmap',
      'home',
      Color.fromRGBO(133, 61, 85, 1),
    ),
    ContainerData(
      Color.fromRGBO(44, 199, 183, 1),
      'Non Academic Roadmap',
      'home',
      Color.fromRGBO(32, 137, 125, 1),
    ),
    ContainerData(
      Color.fromRGBO(223, 98, 97, 1),
      'Principal Mandated Roadmap',
      'home',
      Color.fromRGBO(198, 29, 29, 1),
    ),
    ContainerData(
      Color.fromRGBO(239, 93, 162, 1),
      'Full Roadmap',
      'home',
      Color.fromRGBO(144, 30, 170, 1),
    ),
    ContainerData(
      Colors.deepPurple.shade300,
      'Approved Activities',
      'home',
      Colors.deepPurple.shade800,
    ),
    ContainerData(
      Color.fromRGBO(64, 172, 247, 1),
      'Select Elective',
      'home',
      Color.fromRGBO(24, 95, 142, 1),
    ),
    ContainerData(
      Color.fromRGBO(168, 110, 13, 1),
      'Statistics',
      'home',
      Color.fromRGBO(115, 73, 1, 1),
    ),
    ContainerData(
      Color.fromRGBO(168, 110, 13, 1),
      'Statistics',
      'pick_activity_illustration',
      Color.fromRGBO(115, 73, 1, 1),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _drawerKey,
        // App Bar
        appBar: AppBar(
          leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back, color: Colors.white),
          ),
          backgroundColor: Colors.deepPurple.shade700,
          title: const Text(
            "RoadMap",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
          ),
          actions: [],
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          // padding: const EdgeInsets.only(top: 10),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                imageObj.getImage('assign_activity_bg2'),
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: NotificationListener<OverscrollIndicatorNotification>(
            onNotification: (overscroll) {
              overscroll.disallowGlow();
              return true;
            },
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 8,
              itemBuilder: (context, index) {
                final containerData = containers[index];
                return index != 7
                    ? Container(
                        margin: const EdgeInsets.only(
                          top: 10.0,
                          left: 10.0,
                          right: 10.0,
                        ),
                        child: Container(
                          padding: const EdgeInsets.only(
                            top: 22.0,
                            bottom: 22.0,
                            left: 20.0,
                            right: 20.0,
                          ),
                          margin: const EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.4), //color of shadow
                                spreadRadius: 1, //spread radius
                                blurRadius: 4, // blur radius
                                offset: const Offset(0, 2),
                              )
                            ],
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              stops: const [
                                0.2,
                                0.8,
                              ],
                              colors: [
                                containerData.colorA,
                                containerData.colorB,
                              ],
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(25)),
                          ),
                          child: Row(
                            children: [
                              Text(
                                containerData.heading,
                                style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              const Spacer(),
                              Container(
                                margin: const EdgeInsets.only(right: 13.0),
                                child: Image.asset(
                                  imageObj.getImage(containerData.imageName),
                                  height: 40,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    : Container(
                        margin: const EdgeInsets.only(top: 30),
                        alignment: Alignment.centerLeft,
                        child: Image.asset(
                          imageObj.getImage(containerData.imageName),
                          height: 270,
                        ),
                      );
              },
            ),
          ),
        ),
      ),
    );
  }
}
