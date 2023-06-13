import 'package:bookmyshow/MoviesBox.dart';
import 'package:bookmyshow/MyWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'BottomMenu.dart';
import 'Events.dart';
import 'FirstColumn.dart';
import 'Movie.dart';
import 'RecommendedEventSection.dart';
import 'RecommendedMoviesSection.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'It All Start Here'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          color: Color(0xFF2F3148),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'It All Starts Here',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Greater Noida >',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            actions: [
              IconButton(
                icon: Icon(Icons.search, color: Colors.white),
                onPressed: () {
                  // Handle search button pressed
                },
              ),
              IconButton(
                icon: Icon(Icons.notifications, color: Colors.white),
                onPressed: () {
                  // Handle notifications button pressed
                },
              ),
              IconButton(
                icon: Icon(Icons.qr_code_scanner, color: Colors.white),
                onPressed: () {
                  // Handle QR code scanner button pressed
                },
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [
          FirstColumn(),
          Container(
            height: 200,
            child: Image.asset(
              'assets/images/homeimg.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 88,
            child: MyWidget(),
          ),
          RecommendedMoviesSection(
            movies: movies,
            sectionTitle: 'Recommended Movies',
            seeAllText: 'See All >',
          ),
          RecommendedEventSection(
            events: events,  // Use lowercase 'events' instead of 'Events'
            sectionTitle: 'The Best of Live Events',
            seeAllText: 'See All >',
          ),
          RecommendedMoviesSection(
            movies: movies,
            sectionTitle: 'Recommended Movies',
            seeAllText: 'See All >',
          ),
          Container(
            height: 200,
            child: Image.asset(
              'assets/images/homeimg.jpg',
              fit: BoxFit.cover,
            ),
          ),

        ],
      ),
      bottomNavigationBar: BottomMenu(),
    );
  }
}




