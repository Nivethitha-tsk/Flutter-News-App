// ignore_for_file: prefer_const_constructors
import 'package:cached_network_image/cached_network_image.dart';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

class ArticleTile extends StatelessWidget {
  final String imageurl,title,author;
  final String date;
  ArticleTile(@required this.imageurl,
  @required this.title,
  @required this.author,
  @required this.date);

  

  @override
  Widget build(BuildContext context) {
     var new_date = DateTime.parse(date);
     var dateformat = DateFormat('yyyy-MM-dd');
     final final_date = dateformat.format(new_date);
   return GestureDetector(
    onTap: (){
     // Navigator.push(context, route)
     print("Touched!!");
    },
     child: CachedNetworkImage(imageUrl: imageurl,
     imageBuilder:(context, imageProvider) => Container(
       height: 240,
      decoration: BoxDecoration(
     borderRadius: BorderRadius.circular(10.0),
     image: DecorationImage(
         image: imageProvider,
         fit: BoxFit.cover,),),
         child: Column(
               // ignore: prefer_const_literals_to_create_immutables
               children: [
               Padding(
                 padding: EdgeInsets.only(left:10.0,right:10.0),
                 child: Center(
                 child: Text(
                   title,
                 maxLines: 3,
                 overflow: TextOverflow.ellipsis,
                   style: TextStyle(
                 color: Color(0xfff2f2f2),
                 fontFamily: 'RobotoSlab',
                 fontSize: 20
                ),
         ),
     ),
               ),
               SizedBox(height: 24,),
               Padding(
                 padding: EdgeInsets.only(bottom:12.0,left:10.0,right:10.0),
                 child: Row(
                 children: [
                   Text(author,
                     style: TextStyle(
                   color: Color(0xfff2f2f2),
                   fontFamily: 'RobotoSlab',
                   fontSize: 12
                  ),
                     ),
                    SizedBox(width:7),
                   
                     Text(final_date,
                     style: TextStyle(
                   color: Color(0xffbababa),
                   fontFamily: 'RobotoSlab',
                   fontSize: 12
                  ),
                     ),
                 ],
                 ),
               )
               ],
               mainAxisAlignment: MainAxisAlignment.end,
             ), 
        ),
     ),
   );
  }
}
