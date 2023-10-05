import 'package:flutter/material.dart';
import 'package:simulado/final.dart';

class Tempo extends StatefulWidget {
  final String employeeName;
  final String selectedFunction;

  const Tempo({
    required this.employeeName,
    required this.selectedFunction, required String title,
  });


  @override
  State<Tempo> createState() => _TempoState();
}

class _TempoState extends State<Tempo>{

  TextEditingController workedTimeController = TextEditingController();

  @override
  void dispose() {
    workedTimeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Worked Time'),
      ),
      body: Padding(padding: const EdgeInsets.all(16.0),
        child: Column(children: <Widget>[
            Text('Employee Name: ${widget.employeeName}',
            style: TextStyle(
              fontSize: 20, 
            ),),
            Text('Selected function: ${widget.selectedFunction}',
            style: TextStyle(
              fontSize: 20, 
            ),),
            Container(
              width: MediaQuery.of(context).size.width * 0.8, 
              child: TextField(
                controller: workedTimeController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(labelText: 'Function time'),
                      ),
            ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                  primary: Colors.blue, 
                  onPrimary: Colors.white, 
                  textStyle: TextStyle(fontSize: 20), 
                  padding: EdgeInsets.all(16), 
                ),
                onPressed: () {
                  final workedTime =
                      double.tryParse(workedTimeController.text);
                  if (workedTime != null) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Final(
                          employeeName: widget.employeeName,
                          selectedFunction: widget.selectedFunction,
                          workedTime: workedTime,
                        ),
                      ),
                    );
                  }
                },
                child: Text("Confirm"),
              ),
        ),
        ],)
      )
    );
    throw UnimplementedError();
  }
}