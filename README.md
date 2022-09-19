import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String requiredNumber = '123456';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pin Code.',
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Enter pin number',
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(height: 30.0),
                PinCodeTextField(
                  appContext: context,
                  length: 6,
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    print(value);
                  },
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    inactiveColor: Colors.purple,
                    activeColor: Colors.orange,
                    selectedColor: Colors.brown,
                  ),
                  onCompleted: (value) {
                    if (value == requiredNumber) {
                      print('valid pin');
                    } else {
                      print('invalid pin');
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




///
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String requiredNumber = '123456';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     home:Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 56.0),
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/Logo.png',
                height: 90,
                width: 90,
              ),
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(10),
                child: const Text(
                  'Create 2FA Pin!',
                  style: TextStyle(
                      color: Color(0xFF3B4C7A),
                      fontWeight: FontWeight.w700,
                      fontSize: 24),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 3.0),
                child: const Text(
                  'Enter 6-digit code to',
                  style: TextStyle(
                      color: Color(0xFF4F4F4F),
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 0.0),
                child: const Text(
                  'create two-factor authentication',
                  style: TextStyle(
                      color: Color(0xFF4F4F4F),
                      fontWeight: FontWeight.w400,
                      fontSize: 16),
                )),
            

            MaterialApp(
      title: 'Pin Code.',
      home: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Enter pin number',
                  style: TextStyle(fontSize: 20.0),
                ),
                SizedBox(height: 30.0),
                PinCodeTextField(
                  appContext: context,
                  length: 6,
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    print(value);
                  },
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 50,
                    fieldWidth: 40,
                    inactiveColor: Colors.purple,
                    activeColor: Colors.orange,
                    selectedColor: Colors.brown,
                  ),
                  onCompleted: (value) {
                    if (value == requiredNumber) {
                      print('valid pin');
                    } else {
                      print('invalid pin');
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    )
                ],
        )));
  }
}
