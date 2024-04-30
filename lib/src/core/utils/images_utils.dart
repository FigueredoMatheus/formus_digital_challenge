import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

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
        progressIndicatorBuilder: (context, url, downloadProgress) =>
            CircularProgressIndicator(value: downloadProgress.progress),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }
}
