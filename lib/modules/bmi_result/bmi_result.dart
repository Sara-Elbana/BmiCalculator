import 'package:flutter/material.dart';

class BmiResult extends StatelessWidget {
 // const BmiResult({Key? key}) : super(key: key);
 final bool isMale;
 final int result;
 final int age;

  BmiResult({
   required this.isMale,
   required this.result,
   required this.age,
 });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text(
          'BMI Rrsult',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Gender : ${isMale ? 'Male' :'Female'}',
              style:  const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Result : $result',
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Age : $age',
              style: const TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
