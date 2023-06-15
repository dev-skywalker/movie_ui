import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MovieSliderWidget extends StatelessWidget {
  final String title;
  final int votes;
  final double rating;
  final String image;

  const MovieSliderWidget({super.key, required this.title,required this.votes,required this.rating, required this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      //alignment: Alignment.bottomCenter,
  children: [
    Container(
      // margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 30),
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        // color: Colors.red
      ),
      child: CachedNetworkImage(
        //imageUrl: 'https://image.tmdb.org/t/p/original/hc2ymDMfOCZ0JqrsMUBgL1GZXnz.jpg',
        imageUrl: image,
        imageBuilder: (context,imageProvider)=> Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover
              )
          ),
        ),
        placeholder: (context,url)=> Image.asset('images/tmdb_place_holder.jpg'),
        errorWidget: (context,url,error)=> const Icon(Icons.error),
      ),
    ),
    Container(
      // margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 30),
      width: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              Color.fromRGBO(17, 17, 18, 1),
            ]
        ),
      ),
    ),
    SizedBox(
      width: 170,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,style: const TextStyle(
              color: Colors.grey,
            ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //const SizedBox(width: 5,),
                Row(
                  children: [
                    const Icon(Icons.star_border_purple500_outlined,color:Colors.yellow,size: 25,),
                    const SizedBox(width: 5,),
                    Text(rating.toString(),style: const TextStyle(
                      color: Colors.grey,
                    ),),
                  ],
                ),
                //Spacer(),
                //const SizedBox(width: 25,),
                //Spacer(),
                Text(votes.toString(),style: const TextStyle(color: Colors.grey),)
              ],
            ),
          ],
        ),
      ),
    ),
    
  ],
);
  }
}


// Widget buildMovieContainer({required String title,required int votes,required double rating,required String image})=>
// ;



