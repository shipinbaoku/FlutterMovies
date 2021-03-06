import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class MovieCoverImage extends StatelessWidget {
  final String imgUrl;
  final double width;
  final double height;


  MovieCoverImage(this.imgUrl, {this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipRRect(
          child:CachedNetworkImage(
            //placeholder: (context, url) => CircularProgressIndicator(),
            imageUrl: imgUrl,
            fit: BoxFit.cover,
            width: width,
            height: height,
            errorWidget: (context, url, d) => Image.asset(
              "images/icon_nothing.png",
              width: width,
              height: height,
              fit: BoxFit.cover,
            ),
          ),
        borderRadius: BorderRadius.circular(3.0),
      ),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
    );
  }
}