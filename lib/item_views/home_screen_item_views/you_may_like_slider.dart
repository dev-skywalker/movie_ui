import 'package:flutter/material.dart';

import '../../widgets/movie_slider_widget.dart';

class YouMayLikeSlider extends StatelessWidget {
  final List<dynamic> myList;
  const YouMayLikeSlider({super.key, required this.myList});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(right: 250),
          child: Text('You may like',style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),),
        ),
        // SizedBox(
        //   height: 280,
        //   child: ListView.builder(
        //       scrollDirection: Axis.horizontal,
        //       itemCount: 10,
        //       itemBuilder: (context,index){
        //         return Stack(
        //           children: [
        //             Container(
        //               margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
        //               width: 170,
        //               decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(25),
        //                 // color: Colors.red
        //               ),
        //               child: CachedNetworkImage(
        //                 imageUrl: "https://image.tmdb.org/t/p/original/9GB2iXCPVP6bgyQXXPUchX8CD7p.jpg",
        //                 imageBuilder: (context,imageProvider)=> Container(
        //                   decoration: BoxDecoration(
        //                       borderRadius: BorderRadius.circular(25),
        //                       image: DecorationImage(
        //                           image: imageProvider,
        //                           fit: BoxFit.cover
        //                       )
        //                   ),
        //                 ),
        //                 placeholder: (context,url)=> Image.asset('images/tmdb_place_holder.jpg'),
        //                 errorWidget: (context,url,error)=> const Icon(Icons.error),
        //               ),
        //             ),
        //             Container(
        //               margin: const EdgeInsets.symmetric(horizontal: 9,vertical: 20),
        //               width: 172,
        //               decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(25),
        //                 gradient: const LinearGradient(
        //                     begin: Alignment.topCenter,
        //                     end: Alignment.bottomCenter,
        //                     colors: [
        //                       Colors.transparent,
        //                       Color.fromRGBO(17, 17, 18, 1),
        //                     ]
        //                 ),
        //               ),
        //             ),
        //             const Positioned(
        //               top: 200,
        //               left: 20,
        //               child: Text('Boruto',style: TextStyle(
        //                 color: Colors.white,
        //                 fontSize: 18,
        //                 fontWeight: FontWeight.bold,
        //               ),),
        //             ),
        //             const Positioned(
        //               top: 230,
        //               left: 10,
        //               child: Row(
        //                 children: [
        //                   SizedBox(width: 5,),
        //                   Icon(Icons.star_border_purple500_outlined,color:Colors.yellow,size: 25,),
        //                   SizedBox(width: 10,),
        //                   Text("7.4",style: TextStyle(
        //                     color: Colors.grey,
        //                   ),),
        //                   SizedBox(width: 25,),
        //                   Text('1347 votes',style: TextStyle(color: Colors.grey),)
        //                 ],
        //               ),
        //             ),
        //           ],
        //         );
        //       }
        //   ),
        // ),
        SizedBox(
          height: 280,
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
        )
      ],
    );
  }
}
