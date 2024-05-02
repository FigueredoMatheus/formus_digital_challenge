import 'package:flutter/material.dart';
import 'package:formus_digital_challenge/src/core/data/constants_values.dart';
import 'package:formus_digital_challenge/src/core/themes/my_app_k_colors.dart';
import 'package:shimmer/shimmer.dart';

class HomePageBlocLoadingStateWidget extends StatelessWidget {
  const HomePageBlocLoadingStateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final maxWidth = constraints.maxWidth;

      return Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: SingleChildScrollView(
          child: Wrap(
            alignment: WrapAlignment.spaceBetween,
            runSpacing: ConstantsValues.moviesWrapListRunSpacing,
            children: List.generate(10, (index) {
              return Container(
                decoration: BoxDecoration(
                  color: MyAppKColors.kBgColor.withOpacity(0.15),
                  borderRadius: BorderRadius.circular(
                      ConstantsValues.movieCardBorderRadius),
                ),
                constraints:
                    BoxConstraints(maxWidth: ConstantsValues.movieCardMaxWidth),
                width: maxWidth * 0.47,
                height: ConstantsValues.movieCardHeight,
              );
            }),
          ),
        ),
      );
    });
  }
}
