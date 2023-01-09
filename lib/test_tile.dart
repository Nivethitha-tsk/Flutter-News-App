// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(TestTile());
}
class TestTile extends StatelessWidget {
  const TestTile({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xff464646),
        body: Padding(padding: EdgeInsets.all(16),
        child: Center(
          child: Container(
            height: 240,
            width: 350,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
              image: NetworkImage(
                      "https://images.unsplash.com/photo-1579202673506-ca3ce28943ef"
                      ),
              fit: BoxFit.cover
        )
            ),
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
              Padding(
                padding: const EdgeInsets.only(left:10.0,right:10.0),
                child: Center(
                child: Text('Spider-Man : Far From Home, Endgame, and more : all 23 Marvel movies, ranked',
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
                padding: const EdgeInsets.only(bottom:12.0,left:10.0,right:10.0),
                child: Row(
                children: const [
                  Text('CNN',
                    style: TextStyle(
                  color: Color(0xfff2f2f2),
                  fontFamily: 'RobotoSlab',
                  fontSize: 12
                 ),
                    ),
                   SizedBox(width:7),
                    Text('20-6-2023',
                    style: TextStyle(
                  color: Color(0xffbababa),
                  fontFamily: 'RobotoSlab',
                  fontSize: 10
                 ),
                    ),
                ],
                ),
              )
              ],
              mainAxisAlignment: MainAxisAlignment.end,
            )
            
            
             
            
            
            
            
            
           
            
            ,
          )
          ),
        
        )
        
      )
        
    );
  }
}
