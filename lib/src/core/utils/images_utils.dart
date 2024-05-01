import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:formus_digital_challenge/src/core/themes/my_app_k_colors.dart';

class ImagesUtils {
  static Widget showNetworkImage(
    String imageUrl, {
    double radiusBottomLeft = 5,
    double radiusbottomRight = 5,
    double radiusTopLeft = 5,
    double radiusTopRight = 5,
  }) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(radiusBottomLeft),
        bottomRight: Radius.circular(radiusbottomRight),
        topLeft: Radius.circular(radiusTopLeft),
        topRight: Radius.circular(radiusTopRight),
      ),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        progressIndicatorBuilder: (context, url, downloadProgress) => Container(
          height: 40,
          width: 40,
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: const FittedBox(
            fit: BoxFit.contain,
            child: CircularProgressIndicator(
              color: MyAppKColors.kBgColor,
            ),
          ),
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
