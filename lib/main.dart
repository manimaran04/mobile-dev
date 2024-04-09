import 'package:flutter/material.dart';

void main() {
  runApp(logIn());
}

// ignore: camel_case_types
class logIn extends StatefulWidget {
  const logIn({super.key});

  @override
  MyApp createState() => MyApp();
}

class MyApp extends State<logIn> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('LogIn Page'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'LogIn',
              style: TextStyle(
                  fontSize: 25,
                  color: Color.fromARGB(255, 79, 211, 74),
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 30),
              child: Form(
                  child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter Email',
                        prefixIcon: Icon(Icons.email),
                        border: OutlineInputBorder()),
                    onChanged: (String value) {},
                    validator: (value) {
                      return value!.isEmpty ? 'please Enter Email' : null;
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: TextFormField(
                      keyboardType: TextInputType.visiblePassword,
                      decoration: const InputDecoration(
                          labelText: 'PassWord',
                          hintText: 'Enter Password',
                          prefixIcon: Icon(Icons.password),
                          border: OutlineInputBorder()),
                      onChanged: (String value) {},
                      validator: (value) {
                        return value!.isEmpty ? 'please Enter Password' : null;
                      },
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {},
                    color: Colors.blueGrey,
                    textColor: Colors.white,
                    child: const Text('LogIn'),
                  )
                ],
              )),
            ),
          ],
        ),
      ),
    );
  }
}
