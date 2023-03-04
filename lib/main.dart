// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp( MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar( //to build an app bar
          title:Text('Image Matching'),
          backgroundColor: Colors.indigo[600],
      ),
    body: ImagePage(),
    ),
  ));
}
class ImagePage extends StatefulWidget {
  const ImagePage({super.key});

  @override
 _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  int leftImageNumber=1;
   int rightImageNumber=2;

    void chaneImage(){
       leftImageNumber=Random().nextInt(8) + 1;
       rightImageNumber= Random().nextInt(8) + 1;              
    }

  @override
  Widget build(BuildContext context) {// built is for hot reload
 
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,//display everthing in perfect way
      children: [
        Text(
          leftImageNumber==rightImageNumber
          ? 'You did it'//are thay equl
          :'Try Again',
           style: TextStyle(
            fontSize: 30.0,
            color: Colors.white,
        ),
        ),

    Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(//لاني ابغا احط صورتين بشكل افقي جنب بعض
         children: [
            Expanded(//flex:1,
              
                child: TextButton(
                   onPressed: () {//anonymous function
                     setState(() { // to see changes 
                         chaneImage();
                       });
                  },
                  child: Image.asset('images/image-$leftImageNumber.png')
                ),
              ),

          
              Expanded( //expand a child of a Row,Coulmn,or flex and fill the available space
                      //flex:2,to make this image double size of the first one
        
                child: TextButton(
                   onPressed: () {//anonymous function
                     setState(() { // to see changes 
                         chaneImage();
                       });
                  },
                  child: Image.asset('images/image-$rightImageNumber.png')
                ),
             
            ),
          ],),
    )
      ],
    );
  }
}


