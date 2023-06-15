import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MovieCardWidget extends StatelessWidget {
  final String imgUrl;
  final double height;
  final double width;
  
  const MovieCardWidget({super.key, required this.imgUrl, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Stack(
          children: [
            Container(
              width: width,
              height: height,
              margin: const EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
              ),
              child: CachedNetworkImage(
                imageUrl: imgUrl,
                imageBuilder: (context, imageProvider) => Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(30)),
                    image: DecorationImage(
                      image: imageProvider,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                placeholder: (context, url) => Image.asset('images/tmdb_place_holder.jpg'),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
        
              Container(
                width: MediaQuery.of(context).size.width,
                height: height,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Color.fromRGBO(17, 17, 18, 1),
                      ]
                  ),
                ),
              )
            ]
        );
  }
}