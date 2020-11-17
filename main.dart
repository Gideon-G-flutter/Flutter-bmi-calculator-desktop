import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
        backgroundColor :Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('21.5  ',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),),
                Text('kg/m2', 
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
                ),
              ],
            ),
            Text('Normal',
            style: TextStyle(fontSize: 35,
            color: Colors.grey,
            fontWeight: FontWeight.bold),),
            SizedBox(
              height: 10.0
            ),
            Row( 
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 50,
                  width: 130,
                  child: Center(
                    child: Text('Male',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.amber,
                  ),
                ),
                Container(
                  height: 50,
                  width: 130,
                  child: Center(
                    child: Text('Female',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.amber,
                  ),
                ),
              ],
              
            ),
            Text('Height (cm)',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                    ),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF33691F),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Slider(
                          value: 130,
                          min: 40,
                          max: 220,
                          onChanged: null,
                        ),
                      ),
                    ),
                    Text('Weight (kg)',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey
                    ),),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFF33691F),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Slider(
                          value: 130,
                          min: 40,
                          max: 220,
                          onChanged: null,
                        ),
                      ),
                    ),
                Container(
                  height: 50,
                  width: 150,
                      decoration: BoxDecoration(
                        color: Color(0xFF33691F),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Center(child: Text('CALCULATE')),
                    ),
          ],
        ),
      ),
    );
  }
}
