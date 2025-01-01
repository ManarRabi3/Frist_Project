import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  static const String routeName = "SliderScreen";

  SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  int index = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text("Slider Screen"),
          centerTitle: true,
          leading: Icon(Icons.add),
        ),
        body: Column(
          children: [
            Image.asset("assets/images/car $index.jpg",height: 300,fit: BoxFit.fill,width: 500,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    onPressed: () {
                      if(index==1){
                        index =3;
                      }else{

                      index--;}
                      setState(() {});
                    },
                    child: Icon(Icons.arrow_back)),
                ElevatedButton(
                    onPressed: () {
                      if(index==3){
                        index =1;
                      }else {
                      index++;
                      }
                      setState(() {});
                    },
                    child: Icon(Icons.arrow_forward)),
              ],
            )
          ],
        ),
      ),
    );
  }
}
