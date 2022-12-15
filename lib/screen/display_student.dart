import 'package:flutter/material.dart';
import 'package:test/model/student.dart';

class displaystudentscreen extends StatefulWidget {
  const displaystudentscreen({super.key});

  @override
  State<displaystudentscreen> createState() => _displaystudentscreenState();
}

class _displaystudentscreenState extends State<displaystudentscreen> {
  List<Student> lstStudent = [];

  @override
  void didChangeDependencies() {
    lstStudent = ModalRoute.of(context)!.settings.arguments as List<Student>;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Detail of Student')),
      ),
      body: SizedBox(
        height: 120,
        width: double.infinity,
        child: Card(
          color: Colors.green,
          child: lstStudent.isNotEmpty
              ? ListView.builder(
                  itemCount: lstStudent.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                        title: Text(
                            '${lstStudent[index].fname!}${lstStudent[index].lname!}',
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        subtitle: Text(lstStudent[index].address!),
                        trailing: Wrap(
                          spacing: 8,
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {});
                                },
                                icon: const Icon(
                                  Icons.edit,
                                  size: 30,
                                  color: Colors.black,
                                )),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    // Delete Student
                                    lstStudent.removeAt(index);
                                  });
                                },
                                icon: const Icon(
                                  Icons.delete,
                                  size: 30,
                                  color: Colors.red,
                                )),
                          ],
                        ));
                  },
                )
              : const Center(
                  child: Text('No Data'),
                ),
        ),
      ),
    );
  }
}
