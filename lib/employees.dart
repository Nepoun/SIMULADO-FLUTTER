import 'package:flutter/material.dart';
import 'package:simulado/function.dart';

class Employees extends StatefulWidget {
  const Employees({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Employees> createState() => _FuncState();
}

class _FuncState extends State<Employees> {
  List<String> employees = [
    "Employee A",
    "Employee B",
    "Employee C",
    "Employee D",
    "Employee E",
  ];

  String? selectedEmployee;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: employees.length,
              itemBuilder: (context, index) {
                final employee = employees[index];
                return ListTile(
                  title: Text(employee),
                  onTap: () {
                    setState(() {
                      selectedEmployee = employee;
                    });
                  },
                  tileColor: employee == selectedEmployee
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
              if (selectedEmployee != null) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => _Function(
                      employeeName: selectedEmployee!, title: '',
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