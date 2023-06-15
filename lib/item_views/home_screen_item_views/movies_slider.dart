import 'package:flutter/material.dart';
import '../../widgets/movie_slider_widget.dart';

class MovieSlider extends StatelessWidget {
  final List<dynamic> myList;
  const MovieSlider({super.key, required this.myList,});

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: myList.length,
        itemBuilder: (context,index){
           return Padding(
             padding: const EdgeInsets.only(right: 15),
             child: MovieSliderWidget(
              //key: myList[index],
              rating: myList[index]['rating'], 
              image: myList[index]['image'], 
              title: myList[index]['title'], 
              votes: myList[index]['votes'],
                 ),
           );
        }
      ),
    );
   
  }
}
