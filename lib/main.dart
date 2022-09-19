import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  // hardcode value test นะ
  final String requiredNumber = '123456';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          brightness: Brightness.light, //
          primaryColor: Colors.blueGrey //
          ),
      home: Scaffold(
        body: Padding(
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
                SizedBox(height: 30.0),
                Container(
                  padding : const EdgeInsets.only(right: 25, left: 25),
                child :PinCodeTextField(
                  obscureText: true,
                  animationType: AnimationType.scale,
                  animationDuration: Duration(milliseconds: 300),
                  appContext: context,
                  length: 6,
                  keyboardType: TextInputType.number,

                  // log ค่าเพื่อดู
                  onChanged: (value) {
                    print(value);
                  },
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(6),
                    fieldHeight: 45,
                    fieldWidth: 45,
                    inactiveColor: Color(0XFF888888),
                    activeColor: Color(0xFF5771DF),
                    selectedColor: Color(0xFF3B4C7A),
                  ),

                  // ตอนใส่เสร็จ
                  onCompleted: (value) {
                    if (value == requiredNumber) {
                      print('valid pin');
                    } else {
                      print('invalid pin');
                    }
                  },
                )),
              ],
            )),
      ),
    );
  }
}
