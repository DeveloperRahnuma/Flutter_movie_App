import 'package:flutter/material.dart';
import 'package:flutter_movie_app/DetailsAboutMovie/MovieDetailHeaderPoster.dart';
import 'package:flutter_movie_app/DetailsAboutMovie/MovieDetailsThumbnail.dart';
import 'package:flutter_movie_app/movie.dart';

import 'HorizantalDivider.dart';
import 'MovieCastImageInfo.dart';
import 'MovieCastInformation.dart';

class DetailsPage extends StatefulWidget {
   const DetailsPage({super.key, required this.movieName, required this.movie });
  final String movieName;
  final Movie movie;

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.movieName),
      ),
      body: ListView(
        children: [
          MovieDetailThumbnail(thumbnail: widget.movie.images[1]),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
            child: MovieDetailHeaderPoster(movie: widget.movie),
          ),
          HorizantalDivider(),
          MovieCastInformation(movie : widget.movie ),
          HorizantalDivider(),
          MovieCastImageInfo(movie: widget.movie)
        ],
      ),
    );
  }
}
