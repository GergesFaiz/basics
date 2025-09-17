import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliderImage extends StatefulWidget {

  @override
  State<SliderImage> createState() => _SliderImageState();
}

class _SliderImageState extends State<SliderImage> {
int index=1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slider", style: TextStyle(fontSize: 32)),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Image.asset("assets/images/$index.jpg",height: 200,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                FloatingActionButton(
                  onPressed: () {if(index<1){index=10;}else{
                    index--;}setState(() {});
                  },
                  child: Icon(Icons.arrow_back_ios),
                ),
                Spacer(),
                FloatingActionButton(
                  onPressed: () {if(index>10){index=1;}else{
                    index++;}setState(() {});},
                  child: Icon(Icons.arrow_forward_ios),
                ),],
            ),
          ),

        ],
      ),
    );
  }
}
