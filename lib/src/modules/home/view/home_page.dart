import 'package:flutter/material.dart';
import 'package:formus_digital_challenge/src/models/movie/movie_model.dart';
import 'package:formus_digital_challenge/src/modules/home/widgets/movie_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final movie = MovieModel.fromJson(
    {
      "rank": 1,
      "title": "The Shawshank Redemption",
      "description":
          "Two imprisoned men bond over a number of years, finding solace and eventual redemption through acts of common decency.",
      "image":
          "https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_QL75_UX380_CR0,1,380,562_.jpg",
      "big_image":
          "https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@",
      "genre": ["Drama"],
      "thumbnail":
          "https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_UY67_CR0,0,45,67_AL_.jpg",
      "rating": "9.3",
      "id": "top1",
      "year": 1994,
      "imdbid": "tt0111161",
      "imdb_link": "https://www.imdb.com/title/tt0111161"
    },
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff56636C),
      body: Padding(
        padding: EdgeInsets.only(
          bottom: 25,
          left: 25,
          right: 25,
          top: MediaQuery.of(context).padding.top + 25,
        ),
        child: Container(
          color: Colors.red,
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            runAlignment: WrapAlignment.spaceBetween,
            children: [
              MovieHomePageCard(movieModel: movie),
              MovieHomePageCard(movieModel: movie),
            ],
          ),
        ),
      ),
    );
  }
}
