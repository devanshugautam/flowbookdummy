import 'package:flutter/material.dart';
// Local import
import '../../services/get_images.dart';

class RowCol4Set extends StatelessWidget {
  var variableA;
  var variableAImage;
  var variableB;
  var variableBImage;
  var variableA1;
  var variableA1Image;
  var variableB1;
  var variableB1Image;
  var isBorder;

  RowCol4Set({
    super.key,
    required this.imageObj,
    required this.variableA,
    required this.variableAImage,
    required this.variableB,
    required this.variableBImage,
    required this.variableA1,
    required this.variableA1Image,
    required this.variableB1,
    required this.variableB1Image,
    required this.isBorder,
  });

  final GetImage imageObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 18.0, left: 10, right: 10),
      // color: Colors.black,
      width: MediaQuery.of(context).size.width,
      child: Row(
        // mainAxisSize: ,
        children: [
          Expanded(
            child: Column(
              children: [
                (variableA != '' && variableAImage != '')
                    ? Container(
                        padding:
                            EdgeInsets.only(top: 30.0, bottom: 30.0, left: 15),
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          border: isBorder
                              ? Border.all(
                                  color: Color.fromARGB(255, 233, 186, 112),
                                  width: 1.2,
                                  style: BorderStyle.solid)
                              : null,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(0.4), //color of shadow
                              spreadRadius: 1, //spread radius
                              blurRadius: 4, // blur radius
                              offset: Offset(0, 2),
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                              Radius.circular(isBorder ? 10 : 20)),
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 13.0),
                              child: Image.asset(
                                imageObj.getImage(variableAImage),
                                height: 40,
                              ),
                            ),
                            // Spacer(),
                            Text(
                              variableA,
                              style: TextStyle(
                                  // fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      )
                    : Container(),
                (variableB != '' && variableBImage != '')
                    ? Container(
                        padding:
                            EdgeInsets.only(top: 30.0, bottom: 30.0, left: 15),
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          border: isBorder
                              ? Border.all(
                                  color: Color.fromARGB(255, 233, 186, 112),
                                  width: 1.2,
                                  style: BorderStyle.solid)
                              : null,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(0.4), //color of shadow
                              spreadRadius: 1, //spread radius
                              blurRadius: 4, // blur radius
                              offset: Offset(0, 2),
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                              Radius.circular(isBorder ? 10 : 20)),
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 13.0),
                              child: Image.asset(
                                imageObj.getImage(variableBImage),
                                height: 40,
                              ),
                            ),
                            // Spacer(),
                            Text(
                              variableB,
                              style: TextStyle(
                                  // fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                (variableA1 != '' && variableA1Image != '')
                    ? Container(
                        padding:
                            EdgeInsets.only(top: 30.0, bottom: 30.0, left: 15),
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          border: isBorder
                              ? Border.all(
                                  color: Color.fromARGB(255, 233, 186, 112),
                                  width: 1.2,
                                  style: BorderStyle.solid)
                              : null,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(0.4), //color of shadow
                              spreadRadius: 1, //spread radius
                              blurRadius: 4, // blur radius
                              offset: Offset(0, 2),
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                              Radius.circular(isBorder ? 10 : 20)),
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 13.0),
                              child: Image.asset(
                                imageObj.getImage(variableA1Image),
                                height: 40,
                              ),
                            ),
                            // Spacer(),
                            Text(
                              variableA1,
                              style: TextStyle(
                                  // fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      )
                    : Container(),
                (variableB1 != '' && variableB1Image != '')
                    ? Container(
                        padding:
                            EdgeInsets.only(top: 30.0, bottom: 30.0, left: 15),
                        margin: EdgeInsets.all(5.0),
                        decoration: BoxDecoration(
                          border: isBorder
                              ? Border.all(
                                  color: Color.fromARGB(255, 233, 186, 112),
                                  width: 1.2,
                                  style: BorderStyle.solid)
                              : null,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey
                                  .withOpacity(0.4), //color of shadow
                              spreadRadius: 1, //spread radius
                              blurRadius: 4, // blur radius
                              offset: Offset(0, 2),
                            ),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                              Radius.circular(isBorder ? 10 : 20)),
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              margin: EdgeInsets.only(right: 13.0),
                              child: Image.asset(
                                imageObj.getImage(variableB1Image),
                                height: 40,
                              ),
                            ),
                            // Spacer(),
                            Text(
                              variableB1,
                              style: TextStyle(
                                  // fontWeight: FontWeight.w500,
                                  fontSize: 17,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      )
                    : Container(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
