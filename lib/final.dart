import 'package:flutter/material.dart';
import 'package:simulado/home.dart';

class Final extends StatelessWidget {
  final String employeeName;
  final String selectedFunction;
  final double workedTime;

  const Final({
    required this.employeeName,
    required this.selectedFunction,
    required this.workedTime,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 300, 
              height: 300,
              margin: EdgeInsets.only(bottom: 10),
              child: Image(image: AssetImage("../assets/image/flutter.jpg"))
            ),
            Text('Name: $employeeName',
              style: TextStyle(
              fontSize: 20, 
            ),
            ),
            ),
            Text('Worked Time: $workedTime',
              style: TextStyle(
              fontSize: 20,
            ),
            Text('Selected Function: $selectedFunction',
              style: TextStyle(
              fontSize: 20, 
            ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Data sent!',
              style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.bold, 
              ),),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Thanks!',
              style: TextStyle(
                fontSize: 20, 
                fontWeight: FontWeight.bold, 
              ),),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue, 
                  onPrimary: Colors.white, 
                  textStyle: TextStyle(fontSize: 20), 
                  padding: EdgeInsets.all(16), 
                ),
                child: const Text("Go back"),
                onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Home(title: '')));
                    },
            )
          ],
        ),
      ),
    );
  }
}