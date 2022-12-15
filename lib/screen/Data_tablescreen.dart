import 'package:flutter/material.dart';

import '../model/student.dart';

class datatablescreen extends StatefulWidget {
  @override
  _datatablescreenState createState() => _datatablescreenState();
}

class _datatablescreenState extends State<datatablescreen> {
  _showAlertDialogu(BuildContext context, Student student) {
    AlertDialog alert = AlertDialog(
        title: const Text('Delete?'),
        content: Text("Are you sure you want to delete ${student.fname}??"),
        actions: [
          TextButton(
            child: const Text("No"),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          TextButton(
            child: const Text('Yes'),
            onPressed: () {
              setState(() {
                lastStudent.remove(student);
              });
              Navigator.pop(context);
            },
          )
        ]);
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        });
  }

  List<Student> lastStudent = [
    Student(fname: 'Nitesh', age: 21),
    Student(fname: 'Nirajan', age: 21),
    Student(fname: 'Shoobam', age: 21),
    Student(fname: 'Dherme', age: 21),
    Student(fname: 'Prince', age: 21),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Column'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(8),
        child: SizedBox(
          width: double.infinity,
          child: DataTable(
              headingRowColor:
                  MaterialStateColor.resolveWith((states) => Colors.blue),
              border: TableBorder.all(color: Colors.black),
              columns: const [
                DataColumn(label: Text('Name')),
                DataColumn(label: Text('Age')),
                DataColumn(label: Text('Actions')),
              ],
              rows: lastStudent
                  .map(
                    (Student) => DataRow(
                      cells: [
                        DataCell(Text("${Student.fname}")),
                        DataCell(Text('${Student.age}')),
                        DataCell(Wrap(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.edit,
                                  color: Colors.blue,
                                )),
                            IconButton(
                              onPressed: () {
                                setState(() {
                                  // Delete Student

                                  _showAlertDialogu(context, Student);
                                });
                              },
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                            ),
                          ],
                        ))
                      ],
                    ),
                  )
                  .toList()),
        ),
      ),
    );
  }
}
