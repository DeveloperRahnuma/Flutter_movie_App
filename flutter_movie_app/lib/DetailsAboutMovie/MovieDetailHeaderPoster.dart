import 'package:flutter/material.dart';
import 'package:flutter_movie_app/movie.dart';

class MovieDetailHeaderPoster extends StatelessWidget {
  const MovieDetailHeaderPoster({Key? key, required this.movie}) : super(key: key);
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        MoviePoster(posterUrl: movie.images[0].toString()),
        SizedBox(width: 20,),
        Expanded(child: MovieDeatilsTextInfor(movie: movie))
      ],
    );
  }
}


class MoviePoster extends StatelessWidget {
  const MoviePoster({Key? key, required this.posterUrl}) : super(key: key);
  final String posterUrl;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        width: size.width * 0.2,
        height: size.height * 0.25,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(posterUrl),
            fit: BoxFit.cover
          )
        ),
      ),
    );
  }
}


class MovieDeatilsTextInfor extends StatelessWidget {
  const MovieDeatilsTextInfor({Key? key, required this.movie}) : super(key: key);
  final Movie movie;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("${movie.year} . ${movie.genre}".toUpperCase(),
          style: TextStyle(
              fontWeight: FontWeight.w400,
              color: Colors.cyan
          ),),
        Text(movie.title, style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 32
        ),),
        Wrap(
          children: [
            Text.rich(TextSpan(style: TextStyle(
              fontSize: 13, fontWeight: FontWeight.w300,
            ), children: <TextSpan> [
              TextSpan(
                text: movie.plot,
              ),
              TextSpan(
                  text: "More...",
                  style: TextStyle(
                      color: Colors.indigoAccent
                  )
              )
            ]))
          ],
        )
      ],
    );
  }
}

