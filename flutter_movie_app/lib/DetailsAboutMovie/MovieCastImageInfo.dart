import 'package:flutter/material.dart';
import 'package:flutter_movie_app/movie.dart';

class MovieCastImageInfo extends StatelessWidget {
  const MovieCastImageInfo({Key? key, required this.movie}) : super(key: key);
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("More Movie Posters".toUpperCase(),
            style: const TextStyle(
                fontSize: 14,
                color: Colors.black26
            ),),
        ),


        Container(
          height: 170,
          padding: EdgeInsets.symmetric(vertical: 16),
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: movie.images.length,
              separatorBuilder: (context, index) => SizedBox(width: 8),
              itemBuilder: (context, index){
                return CastImage(CastImageUrl: movie.images[index]);
              }
          ),
        )
      ],
    );
  }
}


class CastImage extends StatelessWidget {
  const CastImage({Key? key, required this.CastImageUrl}) : super(key: key);
  final String CastImageUrl;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: size.width * 0.2,
        height: size.height * 0.25,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(CastImageUrl),
            fit: BoxFit.cover
          )
        ),
    ),
    );
  }
}

