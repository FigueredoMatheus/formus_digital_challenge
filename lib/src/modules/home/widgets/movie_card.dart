import 'package:flutter/material.dart';
import 'package:formus_digital_challenge/src/core/data/constants_values.dart';
import 'package:formus_digital_challenge/src/core/utils/images_utils.dart';
import 'package:formus_digital_challenge/src/models/movie/movie_model.dart';

class MovieHomePageCard extends StatelessWidget {
  final MovieModel movieModel;
  final double cardWidget;

  const MovieHomePageCard({
    super.key,
    required this.movieModel,
    required this.cardWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.all(
          Radius.circular(ConstantsValues.movieCardBorderRadius)),
      elevation: 5,
      child: Container(
        constraints:
            BoxConstraints(maxWidth: ConstantsValues.movieCardMaxWidth),
        width: cardWidget,
        height: ConstantsValues.movieCardHeight,
        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: const Color(0xffF1F4F9),
          borderRadius:
              BorderRadius.circular(ConstantsValues.movieCardBorderRadius),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 218,
              child: ImagesUtils.showNetworkImage(movieModel.image),
            ),
            const SizedBox(height: 5),
            Text(
              movieModel.title,
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
