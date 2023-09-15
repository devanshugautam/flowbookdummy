// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
import 'dart:async';

// Local import
import '../../services/get_images.dart';

class FlowBookTalentBoard extends StatefulWidget {
  const FlowBookTalentBoard({
    super.key,
    required this.imageObj,
  });

  final GetImage imageObj;
  @override
  _FlowBookTalentBoardState createState() => _FlowBookTalentBoardState();
}

class _FlowBookTalentBoardState extends State<FlowBookTalentBoard> {
  double _zoomedImageHeight =
      130.0; // Initialize with your desired initial height
  bool _zoomIn = true;
  late Timer _timer;
  GetImage imageObj = GetImage();

  @override
  void initState() {
    super.initState();
    _startAutoAnimation();
  }

  void _startAutoAnimation() {
    _timer = Timer.periodic(const Duration(seconds: 2), (timer) {
      setState(() {
        _zoomIn = !_zoomIn;
        _zoomedImageHeight =
            _zoomIn ? 130.0 : 150.0; // Adjust the zoom levels as needed.
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancel the timer when the widget is disposed.
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15.0, left: 10, right: 10),
      height: 150,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageObj.getImage('talent_board_bg2')),
          fit: BoxFit.cover,
          opacity: 0.78,
          // colorFilter: ColorFilter.mode(
          //   Colors.black.withOpacity(0.78),
          //   BlendMode.srcOver,
          // ),
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 25, left: 14),
                child: const Text(
                  "Flowbook Talent Board",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 14, top: 5),
                child: const Text(
                  "Share Your Talent",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ),
              const Spacer(),
              Container(
                margin: const EdgeInsets.only(left: 4),
                child: IconButton(
                  color: Colors.white,
                  onPressed: () {},
                  icon: Image.asset(
                    imageObj.getImage('go'),
                    height: 28,
                  ),
                ),
              ),
            ],
          ),
          const Spacer(),
          Center(
            child: AnimatedContainer(
              duration: const Duration(
                  seconds: 2), // Adjust the animation speed as needed.
              curve: Curves.easeInOut,
              height: _zoomedImageHeight,
              child: Image.asset(
                imageObj.getImage(
                  'talent_board_illustration',
                ),
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
      ),
    );
  }
}
