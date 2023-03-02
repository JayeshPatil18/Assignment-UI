import 'package:assignment/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RequestBottomSheet extends StatefulWidget {
  @override
  _RequestBottomSheetState createState() => _RequestBottomSheetState();
}

class _RequestBottomSheetState extends State<RequestBottomSheet> {
  double _height = 200.0;
  double _maxHeight = 240.0;

  void _increaseHeight() {
    setState(() {
      _height = _maxHeight;
    });
  }

  void _decreaseHeight() {
    setState(() {
      _height = 200.0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_height == _maxHeight) {
          _decreaseHeight();
          return false;
        } else {
          return true;
        }
      },
      child: SizedBox(
        height: _height,
        child: _height == _maxHeight ? cancelRequest() : requestRide(),
      ),
    );
  }

  Widget requestRide() {
    return Column(
      children: [
        Container(
              margin: EdgeInsets.only(top: 20, bottom: 20, left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Pickup at host’s location',
                            style: TextStyle(
                                color: Color(0xFF323232),
                                fontSize: 20,
                                fontFamily: 'Jost',
                                fontWeight: FontWeight.w500),
                          ),
                          Container(
                            color: const Color(0xFF323232),
                            margin: EdgeInsets.only(left: 10, right: 10),
                            width: 1,
                            height: 20,
                          ),
                          Text(
                            '3 km',
                            style: TextStyle(
                                color: Color(0xFF323232),
                                fontSize: 20,
                                fontFamily: 'Jost',
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Shantiban Society, Near Tilak Sambh...',
                        style: TextStyle(
                            color: Color(0xFF6E6E6E),
                            fontSize: 14,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Card(
                      elevation: 2.0,
                      margin: EdgeInsets.only(right: 20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0)),
                      color: Color(0xFFF2F2F2),
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Icon(Icons.location_pin, color: Color(0xFF4B48C9)),
                      )),
                ],
              ),
            ),

        Container(
          color: const Color(0xFF6E6E6E),
          height: 0.5,
        ),
        Container(
          margin: const EdgeInsets.all(20),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Est Total:',
                        style: TextStyle(
                            color: Color(0xFF323232),
                            fontSize: 16,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w400),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '₹ 451',
                          style: TextStyle(
                              color: Color(0xFF323232),
                              fontSize: 20,
                              fontFamily: 'Jost',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'View in detail',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color(0xFF00BC8E),
                        fontSize: 18,
                        fontFamily: 'Jost',
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              Expanded(
                  child: GestureDetector(
                onTap: _increaseHeight,
                child: Container(
                  margin: const EdgeInsets.only(left: 10),
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                      color: Color(0xFF4B48C9),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Request Ride',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Icon(Icons.arrow_forward, color: Colors.white)
                    ],
                  ),
                ),
              ))
            ],
          ),
        )
      ],
    );
  }

  Widget cancelRequest() {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Ride Requested',
                    style: TextStyle(
                        color: Color(0xFF323232),
                        fontSize: 20,
                        fontFamily: 'Jost',
                        fontWeight: FontWeight.w500),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Color(0xFFF2F2F2),
                    ),
                    padding: EdgeInsets.only(left: 10, right: 10, top: 4, bottom: 4),
                    child: Row(
                      children: [
                        Text(
                          '5:00',
                          style: TextStyle(
                              color: Color(0xFF323232),
                              fontSize: 14,
                              fontFamily: 'Jost',
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Icon(Icons.timelapse_sharp, color: Color(0xFF323232), size: 20,),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10,),
              Text(
                  'Host has received the ride request. We will notify you as soon as it is accepted.',
                  style: TextStyle(
                      color: Color(0xFF6E6E6E),
                      fontSize: 14,
                      fontFamily: 'Jost',
                      fontWeight: FontWeight.w400),
                ),
            ],
          ),
        ),

        Container(
          color: const Color(0xFF6E6E6E),
          height: 0.5,
        ),
        Container(
          margin: const EdgeInsets.all(20),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Est Total:',
                        style: TextStyle(
                            color: Color(0xFF323232),
                            fontSize: 16,
                            fontFamily: 'Jost',
                            fontWeight: FontWeight.w400),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          '₹ 451',
                          style: TextStyle(
                              color: Color(0xFF323232),
                              fontSize: 20,
                              fontFamily: 'Jost',
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                  Text(
                    'View in detail',
                    style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Color(0xFF00BC8E),
                        fontSize: 18,
                        fontFamily: 'Jost',
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
              Expanded(
                  child: GestureDetector(
                onTap: _decreaseHeight,
                child: Container(
                  margin: const EdgeInsets.only(left: 10),
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                      color: Color(0xFFED752E),
                      borderRadius: BorderRadius.circular(12)),
                  child: Center(
                    child: Text(
                          'Cancel Request',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Jost',
                              fontWeight: FontWeight.w400),
                        ),
                  )
                ),
              ))
            ],
          ),
        )
      ],
    );
  }
}
