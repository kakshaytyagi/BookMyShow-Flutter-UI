import 'package:flutter/material.dart';
import 'dart:async';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final List<String> imagePaths = [
    'assets/images/add1.jpg',
    'assets/images/add2.jpg',
    'assets/images/add3.jpg',
    'assets/images/add4.jpg',
  ];

  int currentIndex = 0;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 2), (Timer timer) {
      setState(() {
        currentIndex = (currentIndex + 1) % imagePaths.length;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 88,
      child: PageView.builder(
        itemCount: imagePaths.length,
        controller: PageController(
          initialPage: currentIndex,
          viewportFraction: 1.0, // Set viewportFraction to 1.0 to show only one item at a time
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              child: Image.asset(
                imagePaths[index],
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
