import 'package:flutter/material.dart';
import 'package:flutter_movie_app/DetailsPage.dart';

import 'movie.dart';

class MovieApp extends StatefulWidget {
  const MovieApp({Key? key}) : super(key: key);

  @override
  State<MovieApp> createState() => _MovieAppState();
}

class _MovieAppState extends State<MovieApp> {

  final List<Movie> movieList = Movie.getMovies();

  final List movies = [
    "Titanic",
    "Blade Runner",
    "Rambo",
    "The Avengers",
    "Avatar",
    "I Am Legend",
    "300",
    "The Wolf of Wall Street",
    "Interstellar",
    "Game of Thrones",
    "Vikings",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        title: const Text("Movie App"),
      ),
      body: ListView.builder(
        itemCount: movieList.length,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        itemBuilder: (BuildContext context, int index){
          return Stack(
            alignment: Alignment.centerLeft,
            children: [
             movieCard(context, movieList[index]),
              listImage(movieList[index].images[0])
          ],
          );

          // return Card(
          //   child: ListTile(
          //     title: Text(movieList[index].title),
          //     leading: const CircleAvatar(),
          //     onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const DetailsPage()));},
          //     subtitle: Text(movieList[index].title),
          //   ),
          // );
        }
      ),
    );
  }


  Widget movieCard(BuildContext context, Movie movie){
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) =>  DetailsPage(movieName: movie.title)));},
      child: Container(
        margin: EdgeInsets.only(left: 30),
        width: size.width,
        height: size.height * 0.15,
        child: Card(
          color: Colors.black45,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Padding(
              padding: const EdgeInsets.only(left:40,right: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(movie.title, style: TextStyle( fontWeight: FontWeight.bold, fontSize: 17.0, color: Colors.white),),
                      Text("Rating: ${movie.imdbRating} / 10", style: TextStyle(fontSize: 15.0, color: Colors.grey),)
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("Released: ${movie.released}", style: mainTextStyle()),
                      Text(movie.runtime, style: mainTextStyle()),
                      Text(movie.rated, style: mainTextStyle())
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


  TextStyle mainTextStyle() {
    return TextStyle(
      fontSize: 15.0,
      color: Colors.grey,
    );
  }

  Widget listImage(String imgUrl){
    return Container(
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
        image: DecorationImage(
          image: NetworkImage(imgUrl ?? "https://images-na.ssl-images-amazon.com/images/M/MV5BMTc0NzAxODAyMl5BMl5BanBnXkFtZTgwMDg0MzQ4MDE@._V1_SX1500_CR0,0,1500,999_AL_.jpg"),
          fit: BoxFit.cover
        )
      ),
    );
  }
}
