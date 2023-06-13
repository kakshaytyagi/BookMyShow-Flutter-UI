import 'package:flutter/material.dart';

import 'Events.dart';


class RecommendedEventSection extends StatelessWidget {
  final List<Events> events;
  final String sectionTitle;
  final String seeAllText;

  RecommendedEventSection({
    required this.events,
    required this.sectionTitle,
    required this.seeAllText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: Column(
        children: [
          _buildHeader(),
          _buildEventList(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            sectionTitle,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          TextButton(
            onPressed: () {
              // Handle "See All" button pressed
            },
            child: Text(
              seeAllText,
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 16.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildEventList() {
    return Container(
      height: 120.0,
      child: ListView.builder(
        itemCount: events.length,
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0),
            child: Container(
              width: 220.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(
                  color: Colors.grey.withOpacity(0.3),
                  width: 2.0,
                ),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  events[index].image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          );
        },
      ),
    );
  }

}
