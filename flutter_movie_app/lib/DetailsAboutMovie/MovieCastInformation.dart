import 'package:flutter/material.dart';
import 'package:flutter_movie_app/movie.dart';

class MovieCastInformation extends StatelessWidget {
  const MovieCastInformation({Key? key, required this.movie}) : super(key: key);
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          MovieCastShow(field: "Cast", value: movie.actors),
          MovieCastShow(field: "Directors", value: movie.director),
          MovieCastShow(field: "Awards" , value: movie.awards)
        ],
      ),
    );
  }
}

class MovieCastShow extends StatelessWidget {
  const MovieCastShow({Key? key, required this.value, required this.field}) : super(key: key);
  final String field;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("$field : ", style: TextStyle(
              color: Colors.black38,
              fontSize: 12, fontWeight: FontWeight.w300
          ),),
          Expanded(
            child: Text(value, style: TextStyle(
                color: Colors.black, fontSize: 12, fontWeight: FontWeight.w300
            ),),
          )
        ],
      ),
    );
  }
}
