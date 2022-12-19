import 'package:flutter/material.dart';
import 'package:passwordfield/passwordfield.dart';

class loginscreen extends StatefulWidget {
  const loginscreen({super.key});

  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  final _firstController = TextEditingController();
  

  final _globalKey = GlobalKey<FormState>();

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    foregroundColor: Colors.black87,
    backgroundColor: Colors.amber,
    padding: const EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 103, 219, 225),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 70,
                ),
                Container(
                  child: Image.asset(
                    'assets/images/learn1.png',
                    height: 200,
                    width: 300,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _firstController,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 2, 128, 231),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                        borderSide: BorderSide(
                          color: Colors.black,
                        )),
                    labelText: 'Userame',
                  ),
                  validator: ((value) {
                    if (value == null || value.isEmpty) {
                      return 'Please Enter username';
                    }
                    return null;
                  }),
                ),
                const SizedBox(
                  height: 20,
                ),
                PasswordField(
                  color: const Color.fromARGB(255, 0, 7, 12),
                  passwordConstraint: r'.*[@$#.*].*',
                  inputDecoration: PasswordDecoration(),
                  // hintText: 'must have special characters',
                  border: PasswordBorder(
                    border: const OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 2, 128, 231),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color.fromARGB(255, 15, 15, 15),
                      ),
                      borderRadius: BorderRadius.circular(17),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide:
                          BorderSide(width: 2, color: Colors.red.shade200),
                    ),
                  ),
                  errorMessage:
                      'must contain special character either . * @ # \$',
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 350,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: raisedButtonStyle,
                      child: const Text(
                        'Login',
                        style: TextStyle(fontSize: 20),
                      )),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: 350,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: raisedButtonStyle,
                      child: const Text('Register',
                          style: TextStyle(fontSize: 20))),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
