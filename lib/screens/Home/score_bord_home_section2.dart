import 'package:flutter/material.dart';

class ScoreBoardHomeSection2 extends StatelessWidget {
  const ScoreBoardHomeSection2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15.0, left: 10, right: 10),
      // margin: EdgeInsets.only(top: 15.0, left: 15, right: 15),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [
            0.2,
            0.9,
          ],
          colors: [
            Colors.blue.shade600,
            Colors.blue.shade300,
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(1.0), //color of shadow
            spreadRadius: 0.1, //spread radius
            blurRadius: 1.9, // blur radius
            offset: Offset(0, 2),
          ),
        ],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 8.0, bottom: 4.0),
            // decoration: BoxDecoration(),
            child: Text(
              "Your Current Progress",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          Container(
            // margin: EdgeInsets.only(top: 8.0),
            // decoration: BoxDecoration(),
            height: 1,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
            child: Text(
              "",
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: 5.0, left: 20.0, right: 20.0, bottom: 10.0),
            child: Column(
              children: [
                Text("User Activies",
                    style: TextStyle(
                        color: Colors.white,
                        // fontWeight: FontWeight.w600,
                        fontSize: 18)),
                // Spacer(),
                Container(
                  margin: EdgeInsets.only(top: 8.0, bottom: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(children: [
                        Text(
                          "0",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text("Total",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400)),
                      ]),
                      Column(children: [
                        Text("0", style: TextStyle(color: Colors.white)),
                        Text("Pending",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400)),
                      ]),
                      Column(children: [
                        Text("0", style: TextStyle(color: Colors.white)),
                        Text("Completed",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400)),
                      ]),
                      Column(children: [
                        Text("0", style: TextStyle(color: Colors.white)),
                        Text("Approved",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400)),
                      ]),
                    ],
                  ),
                ),
                Text("General",
                    style: TextStyle(
                        color: Colors.white,
                        // fontWeight: FontWeight.w500,
                        fontSize: 18)),
                Container(
                  margin: EdgeInsets.only(top: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(children: [
                        Text(
                          "0",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text("Complaints",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400)),
                      ]),
                      Column(children: [
                        Text("0", style: TextStyle(color: Colors.white)),
                        Text("Doubts",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400)),
                      ]),
                      Column(children: [
                        Text("0", style: TextStyle(color: Colors.white)),
                        Text("Feedbacks",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400)),
                      ]),
                      Column(children: [
                        Text("0", style: TextStyle(color: Colors.white)),
                        Text("Talents",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w400)),
                      ]),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
