import 'package:flutter/material.dart';
// Local import
import '../../services/get_images.dart';

class TestimonialsHeading extends StatelessWidget {
  const TestimonialsHeading({
    super.key,
    required this.imageObj,
  });

  final GetImage imageObj;

  @override
  Widget build(BuildContext context) {
    return Container(
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
            margin: EdgeInsets.only(top: 30, left: 40),
            child: Image.asset(
              imageObj.getImage('mascot_logo_1'),
              height: 70,
            ),
          ),
          Spacer(),
          Container(
            margin: EdgeInsets.only(top: 68, right: 15),
            child: Text(
              "Testimonials",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 21,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
