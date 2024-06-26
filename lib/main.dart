import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Random random = Random();
  int x = 0 ;

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Lottery App'),
        ),
       body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Center(child: Text('Lottery winning number is 4')),
          const SizedBox(height: 10,),
          Container(
            height: 250,
            width: 300,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.3),
              borderRadius: BorderRadius.circular(10)
            ),
            child:  Padding(
              padding: const EdgeInsets.all(15.0),
              child: x == 4 ? 
              
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.done_all, color: Colors.green, size: 35,),
                  const SizedBox(height: 15,),
                  Text('Congratulation you have won the lottary, your number is $x\n', textAlign: TextAlign.center,),
              
                ],
              ):

               Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(Icons.error, color: Colors.red, size: 35,),
                  const SizedBox(height: 15,),
                  Text('Better luck next time your number is $x\ntry again', textAlign: TextAlign.center,),
              
                ],
              ),
            ),
            ),
        ],
       ),
       floatingActionButton: FloatingActionButton(
        onPressed:() {
          x = random.nextInt(6);
          print(x);
          setState(() {
            
          });
        },
        child: const Icon(Icons.refresh),
       ),
      )
    );
  }
}