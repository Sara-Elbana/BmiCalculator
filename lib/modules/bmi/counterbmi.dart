import 'dart:math';

import '../bmi_result/bmi_result.dart';
import 'package:flutter/material.dart';

class BmiCalculator extends StatefulWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  bool isMale=true;
  double height=140.0;
  int age=18;
  int weight=50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(
          'BMI Calculator',
        ),
      ),
      body: Column(
        children:
        [
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Expanded(
                            child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  isMale=true;
                                });
                              },
                              child: Container (
                                child:  Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.male,
                                      size: 110,
                                    ),
                                     Text(
                                      'Male',
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0,),
                                  color: isMale? Colors.blue :Colors.grey[300],
                                ),
                              ),
                            ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Expanded(
                          child: GestureDetector(
                            onTap: (){
                              setState(() {
                                isMale=false;
                              });
                            },
                            child: Container(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.female,
                                    size: 110,
                                  ),
                                  Text(
                                    'Female',
                                    style: TextStyle(
                                      fontSize: 30.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10.0,),
                                color: !isMale? Colors.blue: Colors.grey[300],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
              ),
              Expanded(
                child:Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0,
                  ),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'HEIGHT',
                          style: TextStyle(
                            fontSize:25.0,
                            fontWeight: FontWeight.bold,
                          ),                    ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          mainAxisAlignment: MainAxisAlignment.center,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text(
                              '${height.round()}',
                              style: TextStyle(
                                fontSize:40.0,
                                fontWeight: FontWeight.w900,
                              ),                    ),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              'CM',
                              style: TextStyle(
                                fontSize:20.0,
                                fontWeight: FontWeight.bold,
                              ),                    ),
                          ],
                        ),
                        Slider(
                            value: height,
                            max: 240.0,
                            min: 80.0,
                            onChanged: (value){
                              setState(() {
                                height=value;
                              });
                              print(value);
                            },
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.grey[300],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'AGE',
                                style: TextStyle(
                                  fontSize:25.0,
                                  fontWeight: FontWeight.bold,
                                ),                    ),
                              Text(
                                '${age}',
                                style: TextStyle(
                                  fontSize:40.0,
                                  fontWeight: FontWeight.w900,
                                ),                    ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                      onPressed:(){
                                        setState(() {
                                          age--;
                                        });
                                      },
                                    heroTag: 'age-',
                                      mini: true,
                                      child: Icon(
                                      Icons.remove,
                                    ),
                                  ),
                                  FloatingActionButton(
                                    onPressed:(){
                                      setState(() {
                                        age++;
                                      });
                                    },
                                    heroTag: 'agr+',
                                    mini: true,
                                    child: Icon(
                                      Icons.add,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0,),
                            color: Colors.grey[300],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Expanded(
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Wieght',
                                style: TextStyle(
                                  fontSize:25.0,
                                  fontWeight: FontWeight.bold,
                                ),                    ),
                              Text(
                                '${weight}',
                                style: TextStyle(
                                  fontSize:40.0,
                                  fontWeight: FontWeight.w900,
                                ),                    ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  FloatingActionButton(
                                    onPressed:(){
                                      setState(() {
                                        weight--;
                                      });
                                    },
                                    heroTag: 'weight-',
                                    mini: true,
                                    child: Icon(
                                      Icons.remove,
                                    ),
                                  ),
                                  FloatingActionButton(
                                    onPressed:(){
                                      setState(() {
                                        weight++;
                                      });
                                    },
                                    heroTag: 'weight+',
                                    mini: true,
                                    child: Icon(
                                      Icons.add,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0,),
                            color: Colors.grey[300],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width:double.infinity ,
                color: Colors.blue,
                child: MaterialButton(
                    onPressed: (){
                      double result=weight/pow(height/100 ,2);
                      print(result.round());
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BmiResult(
                                isMale: isMale,
                                result: result.round(),
                                age: age,
                              ),
                          ),
                      );
                    },
                  height: 50.0,
                  child:Text(
                    'CALCULATE',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ) ,
                ),
              ),
            ],
      ),
    );
  }
}
