import 'package:flutter/material.dart';

class MainNikeShoesStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: NikeShoesStoreHome(),
    );
  }
}

class NikeShoesStoreHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset(
                  'assets/nike_shoes_store/nike_logo.png',
                  height: 40,
                ),
              ],
            ),
          ),
          Positioned(
            child: Container(
              color: Color.fromRGBO(
                  255, 255, 255, 0.7), // Blanco con 50% de opacidad
              child: Row(),
            ),
          ),
        ],
      ),
    );
  }
}
