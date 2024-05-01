import 'package:flutter/material.dart';
import 'package:formus_digital_challenge/src/core/utils/images_utils.dart';
import 'package:formus_digital_challenge/src/models/movie/movie_model.dart';

class MovieHomePageCard extends StatelessWidget {
  final MovieModel movieModel;

  const MovieHomePageCard({super.key, required this.movieModel});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final cardWidget = constraints.maxWidth * 0.45;
      return Material(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        elevation: 5,
        child: Container(
          width: cardWidget,
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            color: const Color(0xffF1F4F9),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              ImagesUtils.showNetworkImage(movieModel.image),
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
              )
            ],
          ),
        ),
      );
    });
  }
}
