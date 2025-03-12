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
            left: 0,
            right: 0,
            bottom: 0,
            height: kToolbarHeight,
            child: Container(
              color: Color.fromRGBO(
                  255, 255, 255, 0.7), // Blanco con 50% de opacidad
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Icon(Icons.home),
                  ),
                  Expanded(
                    child: Icon(Icons.search),
                  ),
                  Expanded(
                    child: Icon(Icons.favorite_border),
                  ),
                  Expanded(
                    child: Icon(Icons.shopping_cart),
                  ),
                  Expanded(
                    child: Center(
                      child: CircleAvatar(
                        radius: 13,
                        backgroundImage:
                            AssetImage('assets/nike_shoes_store/logo.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
