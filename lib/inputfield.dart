import 'package:flutter/material.dart';

enum SingingCharacter { Male, Female, others }

class calculation extends StatefulWidget {
  const calculation({super.key});

  @override
  State<calculation> createState() => _calculationState();
}

class _calculationState extends State<calculation> {
  final _firstController = TextEditingController();
  final _secondController = TextEditingController();
  final _thirdController = TextEditingController();
  final _fourthController = TextEditingController();
  int result = 0;
  String? firstname;
  String? lastname;
  int age = 0;

  final _globalKey = GlobalKey<FormState>();
  SingingCharacter? _character = SingingCharacter.Male;

  String? valueChoose;
  List listItem = ['Kathmandu', 'Pokhara', 'jhapa', 'siraha'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Student Detail')),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: _globalKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextFormField(
                    controller: _firstController,
                    keyboardType: TextInputType.text,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                          borderSide: BorderSide(
                            color: Colors.black,
                          )),
                      labelText: 'First Name',
                    ),
                    validator: ((value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter first name';
                      }
                      return null;
                    }),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                      controller: _secondController,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                            borderSide: BorderSide(
                              color: Colors.black,
                            )),
                        labelText: "Last Name",
                      ),
                      validator: ((value) {
                        if (value == null || value.isEmpty) {
                          return 'Please Enter last name';
                        }
                        return null;
                      })),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    controller: _thirdController,
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(20.0),
                          ),
                          borderSide: BorderSide(
                            color: Colors.black,
                          )),
                      labelText: 'Age',
                    ),
                    validator: ((value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Age';
                      }
                      return null;
                    }),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text('Select Gender'),
                  ListTile(
                    title: const Text('Male'),
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.Male,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Female'),
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.Female,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('Others'),
                    leading: Radio<SingingCharacter>(
                      value: SingingCharacter.others,
                      groupValue: _character,
                      onChanged: (SingingCharacter? value) {
                        setState(() {
                          _character = value;
                        });
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          padding: const EdgeInsets.only(left: 16, right: 16),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 1),
                              borderRadius: BorderRadius.circular(20)),
                          child: DropdownButton(
                            hint: const Text('Address'),
                            dropdownColor:
                                const Color.fromARGB(255, 223, 222, 222),
                            value: valueChoose,
                            icon: const Icon(Icons.arrow_downward),
                            elevation: 16,
                            isExpanded: true,
                            underline: const SizedBox(),
                            style: const TextStyle(
                                color: Colors.black, fontSize: 22),
                            onChanged: (newvalue) {
                              // This is called when the user selects an item.
                              setState(() {
                                valueChoose = newvalue!;
                              });
                            },
                            items: listItem.map<DropdownMenuItem>((valueItem) {
                              return DropdownMenuItem(
                                value: valueItem,
                                child: Text(valueItem),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    height: 50,
                    width: 250,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_globalKey.currentState!.validate()) {
                          setState(() {});
                        }
                      },
                      child: const Text('Save Student'),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 50,
                    width: 250,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_globalKey.currentState!.validate()) {
                          setState(() {});
                          Navigator.pushNamed(context, '/listtilescreen',
                              arguments: result);
                        }
                      },
                      child: const Text('Student Detail'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
