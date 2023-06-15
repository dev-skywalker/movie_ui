import 'package:flutter/material.dart';
import 'package:movie_app_poc/constants/colors.dart';

import '../item_views/home_screen_item_views/actor_slider.dart';
import '../item_views/home_screen_item_views/first_slider_view.dart';
import '../item_views/home_screen_item_views/movies_slider.dart';
import '../item_views/home_screen_item_views/popular_slider.dart';
import '../item_views/home_screen_item_views/search_item_view.dart';
import '../item_views/home_screen_item_views/type_of_movie_view.dart';
import '../item_views/home_screen_item_views/you_may_like_slider.dart';

class HomeScreen extends StatelessWidget {
   const HomeScreen({super.key});

    static List<dynamic> myList = [
    {
      "title": "This is title one",
      "image": "https://image.tmdb.org/t/p/original/hc2ymDMfOCZ0JqrsMUBgL1GZXnz.jpg",
      "votes": 2334,
      "rating": 4.5
    },
    {
      "title": "This is title two",
      "image": "https://image.tmdb.org/t/p/original/hc2ymDMfOCZ0JqrsMUBgL1GZXnz.jpg",
      "votes": 2334,
      "rating": 4.5
    },
    {
      "title": "This is title three",
      "image": "https://image.tmdb.org/t/p/original/hc2ymDMfOCZ0JqrsMUBgL1GZXnz.jpg",
      "votes": 2334,
      "rating": 4.5
    },
    {
      "title": "This is title four",
      "image": "https://image.tmdb.org/t/p/original/hc2ymDMfOCZ0JqrsMUBgL1GZXnz.jpg",
      "votes": 2334,
      "rating": 4.5
    },
    {
      "title": "This is title five",
      "image": "https://image.tmdb.org/t/p/original/hc2ymDMfOCZ0JqrsMUBgL1GZXnz.jpg",
      "votes": 2334,
      "rating": 4.5
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
            children: [
              const SizedBox(height: 30,),
              const SearchItemView(),
              const SizedBox(height: 10,),
              TypesOfMovies(),
              const SizedBox(height: 20,),
              const FirstSlider(),
              const SizedBox(height: 20,),
              MovieSlider(myList: myList),
              const SizedBox(height: 20,),
              YouMayLikeSlider(myList: myList),
              const SizedBox(height: 30,),
              const PopularSlider(),
              const SizedBox(height: 40,),
              const ActorSlider(),
              const SizedBox(height: 40,),
            ],
          ),
      ),
    );
  }
}
