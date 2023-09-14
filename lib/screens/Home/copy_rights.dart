import 'package:flutter/material.dart';

class CopyRights extends StatelessWidget {
  const CopyRights({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.center,
      margin: EdgeInsets.only(top: 55.0, left: 10, right: 10),
      child: Column(
        children: [
          Text(
            "v 3.0.75",
            style: TextStyle(
              // fontSize: 18,
              // fontWeight: FontWeight.w600,
              color: Colors.deepPurple.shade900,
            ),
          ),
          Text(
            "Copyright c 2023",
            style: TextStyle(
              // fontSize: 18,
              // fontWeight: FontWeight.w600,
              color: Colors.deepPurple.shade900,
            ),
          ),
          Text(
            "Back To Basics Learning Solutions India Pvt Ltd.",
            style: TextStyle(
              // fontSize: 18,
              // fontWeight: FontWeight.w600,
              color: Colors.deepPurple.shade900,
            ),
          ),
          Text(
            "All Right Reserved.",
            style: TextStyle(
              // fontSize: 18,
              // fontWeight: FontWeight.w600,
              color: Colors.deepPurple.shade900,
            ),
          ),
        ],
      ),
    );
  }
}
