import 'package:flutter/material.dart';

// Local import
import '../../services/get_images.dart';

class HomeScreenSection3 extends StatelessWidget {
  const HomeScreenSection3({
    super.key,
    required this.imageObj,
  });

  final GetImage imageObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 18.0, left: 10, right: 10),
      // color: Colors.red,
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
            child: Container(
              // margin: EdgeInsets.all(10),
              height: 150,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                // color: dataList[index].color,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [
                    0.2,
                    0.9,
                  ],
                  colors: [
                    Colors.blue.shade600,
                    Colors.green.shade300,
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 18, left: 12),
                    child: const Text(
                      "Self Revision",
                      style: TextStyle(
                          // fontWeight: FontWeight.w500,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 12, top: 2),
                    child: const Text(
                      "Learn Concepts",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white),
                    ),
                  ),
                  // Spacer(),
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(left: 1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IconButton(
                              color: Colors.white,
                              onPressed: () {},
                              icon: Image.asset(
                                imageObj.getImage('go'),
                                height: 28,
                              ),
                            ),
                            // Spacer(),
                            IconButton(
                              color: Colors.white,
                              onPressed: () {},
                              icon: Image.asset(
                                imageObj.getImage('watch_videos_bg'),
                                // width: 100,
                                height: 28,
                              ),
                            ),
                          ],
                        )),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Expanded(
            child: Container(
              // margin: EdgeInsets.all(10),
              height: 150,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                // color: dataList[index].color,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: const [
                    0.2,
                    0.9,
                  ],
                  colors: [
                    Colors.green.shade600,
                    Colors.blue.shade300,
                  ],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 18, left: 12),
                    child: const Text(
                      "Your Roadmap",
                      style: TextStyle(
                          // fontWeight: FontWeight.w600,
                          fontSize: 20,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 12, top: 2),
                    child: const Text(
                      "Complete Tasks",
                      style: TextStyle(
                          // fontWeight: FontWeight.w400,
                          fontSize: 14,
                          color: Colors.white),
                    ),
                  ),
                  // Spacer(),
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(left: 1),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IconButton(
                              color: Colors.white,
                              onPressed: () {},
                              icon: Image.asset(
                                imageObj.getImage('go'),
                                height: 28,
                              ),
                            ),
                            // Spacer(),
                            IconButton(
                              color: Colors.white,
                              onPressed: () {},
                              icon: Image.asset(
                                imageObj.getImage('roadmap_bg'),
                                height: 28,
                              ),
                            ),
                          ],
                        )),
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
