import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num = 100;
  void cambiarNumero() {
    num += 100;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Dados"),
        ),
        body: Container(
          color: Colors.indigoAccent,
          child: Column(
            children: [
              Text(
                num.toString(),
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                  onPressed: () {
                    cambiarNumero();
                    setState(() {});
                  },
                  child: Text("Cambiar a 200")),
              Expanded(
                child: Image.asset(
                  "assets/images/dice1.png",
                  fit: BoxFit.contain,
                ),
              ),
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage("assets/images/dice1.png"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
