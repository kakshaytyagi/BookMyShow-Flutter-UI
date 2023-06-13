import 'package:flutter/material.dart';

class Movie {
  final String title;
  final String image;
  final double rating;
  final String votes;

  Movie({
    required this.title,
    required this.image,
    required this.rating,
    required this.votes,
  });
}

List<Movie> movies = [
  Movie(
    title: 'Zara Hatke Zara Bachke',
    image: 'assets/images/TereVaste.png',
    rating: 6.5,
    votes: '48k Votes',
  ),
  Movie(
    title: 'Spider-Man: Across The Spider-Verse',
    image: 'assets/images/spiderman.png',
    rating: 8.4,
    votes: '32.7K Votes',
  ),
  Movie(
    title: 'Adipurush',
    image: 'assets/images/adipurush.png',
    rating: 4.5,
    votes: '755K Likes',
  ),
  Movie(
    title: 'The Flash',
    image: 'assets/images/TheFlash.png',
    rating: 4.2,
    votes: '106.1K Likes',
  ),
  Movie(
    title: 'Transformers: Rise of the Beasts',
    image: 'assets/images/transformer.png',
    rating: 4.5,
    votes: '14.4K Votes',
  ),
];

