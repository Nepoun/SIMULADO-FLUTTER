import 'package:flutter/material.dart';
import 'package:simulado/tempo.dart';

class _Function extends StatefulWidget {
  final String employeeName;

  const _Function({
    required this.employeeName, required String title,
  });

  @override
  State<_Function> createState() => _FunctionState();
}

class _FunctionState extends State<_Function> {
  List<String> functions = [
    "A",
    "B",
    "C",
    "D",
  ];

  String? selectedFunction;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Function page!'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text('Selected employee: ${widget.employeeName}',
            style: TextStyle(
              fontSize: 18,
            ),),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: functions.length,
              itemBuilder: (context, index) {
                final _function = functions[index];
                return ListTile(
                  title: Text(_function),
                  onTap: () {
                    setState(() {
                      selectedFunction = _function;
                    });
                  },
                  tileColor: _function == selectedFunction
                      ? Colors.blue.withOpacity(0.3)
                      : null,
                );
              },
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.blue, 
                onPrimary: Colors.white,
                textStyle: TextStyle(fontSize: 20), 
                padding: EdgeInsets.all(16), 
              ),
            onPressed: () {
              if (selectedFunction != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => _Time(
                      employeeName: widget.employeeName,
                      selectedFunction: selectedFunction!, title: '',
                    ),
                  ),
                );
              }
            },
            child: Text("Select"),
          ),
        ],
      ),
    );
  }
}
