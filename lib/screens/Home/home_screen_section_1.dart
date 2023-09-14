import 'package:flutter/material.dart';

// Local import
import '../../services/get_images.dart';

class HomeScreenSection1 extends StatelessWidget {
  const HomeScreenSection1({
    super.key,
    required this.imageObj,
  });

  final GetImage imageObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 120,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [
          0.2,
          0.9,
        ],
        colors: [
          Colors.deepPurple.shade400,
          Colors.deepPurple.shade600,
        ],
      )),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Row(
              children: [
                Icon(
                  Icons.account_circle_rounded,
                  color: Colors.white,
                  size: 30,
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'Welcome',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Devanshu",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                Spacer(),
                Container(
                  // padding: EdgeInsets.all(10),
                  child: Image.asset(imageObj.getImage('flowBook_logo_white'),
                      height: 45),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              // margin: EdgeInsets.only(bottom: 8.0),
              margin: EdgeInsets.only(
                  top: 10.0, right: 15.0, left: 15.0, bottom: 8.0),
              // width: 350,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(imageObj.getImage('personal_notes'),
                          height: 28),
                      Text(
                        " Notes",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(imageObj.getImage('profile_placeholder'),
                          height: 28),
                      Text(
                        " Teacher(s)",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(imageObj.getImage('alerts'), height: 28),
                      Text(
                        " Alerts",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
