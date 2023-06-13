import 'package:flutter/material.dart';

import 'Movie.dart';
import 'MoviesBox.dart';


class RecommendedMoviesSection extends StatelessWidget {
  final List<Movie> movies;
  final String sectionTitle;
  final String seeAllText;

  RecommendedMoviesSection({
    required this.movies,
    required this.sectionTitle,
    required this.seeAllText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 280,
      child: Column(
        children: [
          _buildHeader(),
          _buildMovieList(),
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

  Widget _buildMovieList() {
    return Expanded(
      child: Container(
        height: 240.0,
        child: ListView.builder(
          itemCount: movies.length,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          itemBuilder: (context, index) {
            return MoviesBox(
              title: movies[index].title,
              image: movies[index].image,
              rating: movies[index].rating,
              votes: movies[index].votes,
            );
          },
        ),
      ),
    );
  }
}
