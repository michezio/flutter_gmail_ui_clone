import 'package:flutter/material.dart';
import 'dart:math';

const Color notSoBlack = Color(0xFF404040);
const Color lilMoreBlack = Colors.black87;
const Color paleBlue = Color(0x300040BB);
const Color paleGrey = Colors.black12;

Color randomColor() {
  return HSLColor.fromAHSL(1.0, Random().nextDouble() * 360.0, 0.7, 0.6)
      .toColor();
}

class EmailEntry extends StatelessWidget {
  final String sender;
  final String object;
  final String message;
  final String date;
  final bool unread;

  const EmailEntry(
      {this.sender = "Empty",
      this.object = "Empty",
      this.message = "Empty",
      this.date = "Empty",
      this.unread = false});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () => {},
            highlightColor: paleGrey,
            splashColor: paleBlue,
            child: Padding(
              padding: EdgeInsets.only(right: 12.0),
              child: Row(
                children: <Widget>[
                  // RANDOM COLORED AVATAR
                  Padding(
                    padding: EdgeInsets.all(16.0),
                    child: CircleAvatar(
                      backgroundColor: randomColor(),
                      radius: 22,
                      child: Center(
                        child: Text(
                          sender.substring(0, 1).toUpperCase(),
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w300,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // TEXT ELEMENTS
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      child: Column(
                        children: <Widget>[
                          // SENDER AND DATE
                          Row(
                            children: <Widget>[
                              // SENDER
                              Expanded(
                                child: Text(
                                  sender,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: unread
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                    color: unread ? Colors.black : lilMoreBlack,
                                  ),
                                ),
                              ),
                              // DATE
                              Text(
                                date,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: unread ? Colors.blue : notSoBlack,
                                  fontWeight: unread
                                        ? FontWeight.bold
                                        : FontWeight.w300,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          // OBJECT, MESSAGE AND STAR ICON
                          Padding(
                            padding: EdgeInsets.only(top: 3.0),
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: <Widget>[
                                      // OBJECT
                                      Text(
                                        object,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: unread
                                              ? FontWeight.bold
                                              : FontWeight.w300,
                                          color: unread
                                              ? Colors.black
                                              : notSoBlack,
                                        ),
                                      ),
                                      // MESSAGE
                                      Padding(
                                        padding:
                                            EdgeInsets.only(top: 3.0),
                                        child: Text(
                                          message,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w300,
                                            color: notSoBlack,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // STAR ICON
                                Padding(
                                  padding: EdgeInsets.only(left: 2.0),
                                  child: Icon(
                                    Icons.star_border,
                                    size: 30,
                                    color: Colors.black26,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // DIVIDER
          Divider(
            height: 1,
            color: Colors.black12,
          ),
        ],
      ),
    );
  }
}
