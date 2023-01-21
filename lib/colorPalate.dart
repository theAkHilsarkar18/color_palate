import 'dart:math';

import 'package:flutter/material.dart';

class ColorPalate extends StatefulWidget {
  const ColorPalate({Key? key}) : super(key: key);

  @override
  State<ColorPalate> createState() => _ColorPalateState();
}

class _ColorPalateState extends State<ColorPalate> {
  // color list
  List colorList1 = [Colors.green,Colors.red,Colors.lightBlueAccent,Colors.orange,Colors.pinkAccent,Colors.limeAccent];
  List colorList2 = [Colors.red,Colors.lightBlueAccent,Colors.orange,Colors.pinkAccent,Colors.limeAccent,Colors.green,];
  List colorList3 = [Colors.lightBlueAccent,Colors.orange,Colors.pinkAccent,Colors.limeAccent,Colors.green,Colors.red,];
  List colorList4 = [Colors.orange,Colors.pinkAccent,Colors.limeAccent,Colors.green,Colors.red,Colors.lightBlueAccent,];

  int randomValue1 = 0;
  int randomValue2 = 0;
  int randomValue3 = 0;
  int randomValue4 = 0;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(height: 5,),
            Container(
              alignment: Alignment.center,
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black,width: 5),
                gradient: LinearGradient(
                    colors: [
                      colorList1[randomValue1],
                      colorList2[randomValue2],
                      colorList3[randomValue3],
                      colorList4[randomValue4],
                    ]
                ),
                borderRadius: BorderRadius.circular(50),
              ),
              child: const Text("Gradient Color Palate",style: TextStyle(color: Colors.white,fontSize: 25,letterSpacing: 2,fontWeight: FontWeight.bold)),
            ),
            const SizedBox(height: 100,),
            ColorBox(),
            const SizedBox(height: 50,),
            InkWell(
              onTap: () {
                var rnd1 = Random();
                var rnd2 = Random();
                var rnd3 = Random();
                var rnd4 = Random();
                setState(() {
                  randomValue1 = rnd1.nextInt(5);
                  randomValue2 = rnd2.nextInt(5);
                  randomValue3 = rnd3.nextInt(5);
                  randomValue4 = rnd4.nextInt(5);
                });
              },
              child: Container(
                alignment: Alignment.center,
                height: 60,
                width: 150,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 5),
                  gradient: LinearGradient(
                      colors: [
                        colorList1[randomValue4],
                        colorList2[randomValue3],
                        colorList3[randomValue2],
                        colorList4[randomValue1],
                      ]
                  ),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: const Text("Generate",style: TextStyle(fontWeight: FontWeight.bold,letterSpacing: 1,fontSize: 20,color: Colors.white)),
              ),
            ),


          ],
        ),
      ),
    );
  }

  Widget ColorBox()
  {
    return Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black,width: 5),
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            colorList1[randomValue1],
            colorList2[randomValue2],
            colorList3[randomValue3],
            colorList4[randomValue4],
          ]
        ),
      ),
    );
  }
}
