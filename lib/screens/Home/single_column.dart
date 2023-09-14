import 'package:flutter/material.dart';
import '../../services/get_images.dart';

class SingleColumn extends StatelessWidget {
  final String imageName;
  final String heading;
  final String desc;
  final bool isBorder;
  final GetImage imageObj;

  SingleColumn({
    Key? key,
    required this.imageObj,
    required this.imageName,
    required this.heading,
    required this.desc,
    required this.isBorder,
  }) : super(key: key);

  void _handleContainerTap() {
    print("Clicked on container with heading: $heading");
  }

  @override
  Widget build(BuildContext context) {
    final EdgeInsets margin = isBorder
        ? const EdgeInsets.only(top: 2.0, left: 10.0, right: 10.0)
        : const EdgeInsets.only(top: 10.0, left: 10.0, right: 10.0);

    final EdgeInsets padding = isBorder
        ? const EdgeInsets.symmetric(vertical: 33.0, horizontal: 20.0)
        : const EdgeInsets.symmetric(vertical: 22.0, horizontal: 20.0);

    final BoxDecoration decoration = BoxDecoration(
      border: isBorder
          ? Border.all(
              color: const Color.fromARGB(255, 240, 170, 57),
              width: 1.5,
              style: BorderStyle.solid)
          : null,
      boxShadow: [
        !isBorder
            ? BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 4,
                offset: const Offset(0, 2),
              )
            : const BoxShadow(),
      ],
      color: Colors.white,
      borderRadius: BorderRadius.all(
        Radius.circular(!isBorder ? 25 : 10),
      ),
    );

    return GestureDetector(
      onTap: _handleContainerTap,
      child: Container(
        margin: margin,
        child: Container(
          padding: padding,
          margin: const EdgeInsets.all(5.0),
          decoration: decoration,
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.only(right: 13.0),
                child: Image.asset(
                  imageObj.getImage(imageName),
                  height: isBorder ? 47 : 55,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    heading,
                    style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 19,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 4),
                    child: Text(
                      desc,
                      style: const TextStyle(
                        fontWeight: FontWeight.w300,
                        fontSize: 13,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
