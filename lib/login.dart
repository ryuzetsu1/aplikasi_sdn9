import 'package:flutter/material.dart';


Map<int, Color> color = {
  50: Color.fromRGBO(0, 105, 148, .1),
  100: Color.fromRGBO(0, 105, 148, .2),
  200: Color.fromRGBO(0, 105, 148, .3),
  300: Color.fromRGBO(0, 105, 148, .4),
  400: Color.fromRGBO(0, 105, 148, .5),
  500: Color.fromRGBO(0, 105, 148, .6),
  600: Color.fromRGBO(0, 105, 148, .7),
  700: Color.fromRGBO(0, 105, 148, .8),
  800: Color.fromRGBO(106, 175, 246, 0.9019607843137255),
  900: Color.fromRGBO(119, 197, 255, 1.0),
};

MaterialColor customBlue = MaterialColor(0xFF006994, color);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PresensiApp',
      theme: ThemeData(
        primarySwatch: customBlue,
      ),
      home: Scaffold(

        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'assets/images/POLBENG.png',
                      height: 100,
                    ),
                    SizedBox(height: 10),
                    Text(
                      "PresensiApp",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[400],
                      ),
                    ),
                    // Teks kedua telah dihapus
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
