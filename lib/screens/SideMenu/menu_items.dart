import 'package:flutter/material.dart';

// Local import
import '../../services/get_images.dart';

class MenuItem extends StatelessWidget {
  var itemName;
  var imageName;
  MenuItem({
    super.key,
    required this.itemName,
    required this.imageName,
    required this.imageObj,
  });
  final GetImage imageObj;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            margin: const EdgeInsets.only(right: 35),
            child: Image.asset(imageObj.getImage(imageName), height: 22),
          ),
          Text(
            itemName,
            style: const TextStyle(
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
      onTap: () {
        Navigator.pop(context); // Close the drawer
      },
    );
  }
}
