import 'package:flutter/material.dart';

class MovieDetailThumbnail extends StatelessWidget {
  const MovieDetailThumbnail({Key? key, required this.thumbnail}) : super(key: key);
  final String thumbnail;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
      Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: size.width,
          height: size.height * 0.3,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(thumbnail),
                  fit: BoxFit.cover
              ),

          ),
        ),

        const Icon(Icons.play_circle_outline, size: 100, color: Colors.white,)
      ],
    ),
        Container(
          decoration: BoxDecoration(
           gradient: LinearGradient(
             colors: [Color(0x00f5f5f5), Color(0xfff5f5f5)],
             begin: Alignment.topCenter,
             end: Alignment.bottomCenter
           )
          ),
          height: 80,
        )
      ]
    );
  }
}
