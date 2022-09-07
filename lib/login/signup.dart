// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/services.dart';
import 'package:my_app/widgets/warning.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  final _formKey = GlobalKey<FormState>();
  var color1 = Colors.blue;
  var color2 = Colors.blueGrey;
  @override
  Widget build(BuildContext context) {
    TextEditingController name1 = TextEditingController();
    TextEditingController name2 = TextEditingController();
    TextEditingController nameUSER = TextEditingController();
    TextEditingController DOB = TextEditingController();
    TextEditingController email = TextEditingController();
    TextEditingController phone = TextEditingController();
    TextEditingController password = TextEditingController();
    return MaterialApp(
        theme: ThemeData(primarySwatch: Colors.grey),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Sign up'),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(15),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Padding(padding: EdgeInsets.all(5)),
                    TextFormField(
                      controller: name1,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        icon: Icon(Icons.abc_outlined),
                        hintText: 'Enter your firstname i.e Smith',
                        labelText: 'Firstname',
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your firstname';
                        }
                        return null;
                      },
                    ),
                    const Padding(padding: EdgeInsets.all(5)),
                    TextFormField(
                      controller: name2,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          icon: Icon(Icons.abc_outlined),
                          hintText: 'Enter your Lastname i.e John',
                          labelText: 'Lastname'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your lastname';
                        }
                        return null;
                      },
                    ),
                    const Padding(padding: EdgeInsets.all(5)),
                    TextFormField(
                      controller: nameUSER,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          icon: Icon(Icons.person),
                          hintText: 'Enter your username i.e Batman',
                          labelText: 'Username'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your username';
                        }
                        return null;
                      },
                    ),
                    const Padding(padding: EdgeInsets.all(5)),
                    TextFormField(
                      controller: phone,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          icon: Icon(Icons.phone),
                          hintText: 'Enter your phonenumber i.e 08012345678',
                          labelText: 'Phonenumber'),
                      maxLength: 14,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter a valid phonenumber';
                        }
                        return null;
                      },
                    ),
                    const Padding(padding: EdgeInsets.all(5)),
                    TextFormField(
                      controller: email,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          icon: Icon(Icons.email),
                          hintText: 'Enter Valid Email i.e me@example.com',
                          labelText: 'Email'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your email';
                        }
                        return null;
                      },
                    ),
                    const Padding(padding: EdgeInsets.all(5)),
                    TextFormField(
                      controller: DOB,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          icon: Icon(Icons.date_range),
                          hintText: 'Enter your date of birth i.e 20/12/2000',
                          labelText: 'DOB'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your date of birth';
                        }
                        return null;
                      },
                    ),
                    const Padding(padding: EdgeInsets.all(5)),
                    TextFormField(
                      controller: password,
                      obscureText: true,
                      maxLength: 12,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          icon: Icon(Icons.key),
                          hintText: 'Set a passwod',
                          labelText: 'Password'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Set password';
                        }
                        return null;
                      },
                    ),
                    const Padding(padding: EdgeInsets.all(5)),
                    TextFormField(
                      controller: password,
                      obscureText: true,
                      maxLength: 12,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          icon: Icon(Icons.key),
                          hintText: 'Confirm passwod',
                          labelText: 'Confirm Password'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Confirm password';
                        }
                        return null;
                      },
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 150.0, top: 40.0),
                      child: RaisedButton(
                        color: Color.fromARGB(255, 68, 41, 36),
                        textColor: Colors.white,
                        child: Text(
                          'Submit',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Scaffold.of(context).showSnackBar(
                                SnackBar(content: Text('Data is processing.')));
                          }
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: GestureDetector(
                      onTap: () {
                        setState(() {
                          color2 = color1;
                        });
                        // Navigator.push(context,
                        //  MaterialPageRoute(builder: (context) => SBox()));
                      },
                      child: Icon(
                        Icons.add,
                        color: color2,
                      )),
                  label: "Add Notes"),
              BottomNavigationBarItem(
                  icon: GestureDetector(
                      onTap: () {
                        showDialog(
                            context: context,
                            builder: (context) =>
                                Warning(texts: "Hello", callback: (() {})));
                      },
                      child: Icon(Icons.visibility)),
                  label: "View"),
              BottomNavigationBarItem(icon: Icon(Icons.save), label: "Save")
            ],
          ),
        ));
  }
}
