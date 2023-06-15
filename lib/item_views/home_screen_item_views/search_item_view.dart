import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../screens/search_screen.dart';
class SearchItemView extends StatelessWidget {
  const SearchItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              // width: 280,
              height: 50,
              decoration: BoxDecoration(
                  color: kSearchBoxColor,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: const Padding(
                padding: EdgeInsets.only(left: 15),
                child: Text('Search movies...',style: TextStyle(
                  color: Colors.grey,
                ),),
              ),
            ),
          ),
          const SizedBox(width: 15,),
          GestureDetector(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const SearchScreen()));
            },
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                  color: kSecondaryColor,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: const Icon(Icons.search_sharp,color: Colors.white,size: 28,),
            ),
          )
        ],
      ),
    );
  }
}