import 'package:flutter/material.dart';
import 'package:formus_digital_challenge/src/core/data/constants_values.dart';
import 'package:formus_digital_challenge/src/models/movie/movie_model.dart';
import 'package:formus_digital_challenge/src/modules/home/widgets/movie_card.dart';

class HomePageBlocSuccessFetchDataStateWidget extends StatelessWidget {
  final List<MovieModel> movies;

  const HomePageBlocSuccessFetchDataStateWidget({
    super.key,
    required this.movies,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final maxWidth = constraints.maxWidth;

      final movieCardWidth = maxWidth * 0.45;

      return SingleChildScrollView(
        child: Wrap(
          alignment: WrapAlignment.spaceBetween,
          runSpacing: ConstantsValues.moviesWrapListRunSpacing,
          children: movies
              .map(
                (movie) => MovieHomePageCard(
                  movieModel: movie,
                  cardWidget: movieCardWidth,
                ),
              )
              .toList(),
        ),
      );
    });
  }
}
