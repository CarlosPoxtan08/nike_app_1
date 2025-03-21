import 'package:flutter/material.dart';
import 'package:nike_app_1/nike_shoes_store_app/nike_shoes.dart';

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
            padding: const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset(
                  'assets/nike_shoes_store/nike_logo.png',
                  height: 40,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: shoes.length,
                    itemBuilder: (context, index) {
                      final shoesItem = shoes[index];
                      return NikeShoesItem(shoesItem: shoesItem);
                    },
                  ),
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

class NikeShoesItem extends StatelessWidget {
  final NikeShoes shoesItem;

  const NikeShoesItem({super.key, required this.shoesItem});

  @override
  Widget build(BuildContext context) {
    const itemHeight = 290.0;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: SizedBox(
        height: itemHeight,
        child: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Positioned.fill(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  color: Color(shoesItem.color),
                ),
              ),
            ),
            Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  height: itemHeight * 0.6,
                  child: FittedBox(
                    child: Text(
                      shoesItem.modelNumber.toString(),
                      style: TextStyle(
                        color: Colors.black12,
                      ),
                    ),
                  ),
                )),
            Positioned(
              top: 10,
              left: 30,
              right: 30,
              height: itemHeight * 0.65,
              child: Image.asset(
                shoesItem.images.first,
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Icon(
                Icons.favorite_border,
                color: Colors.grey,
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              child: Icon(
                Icons.shopping_cart,
                color: Colors.grey,
              ),
            ),
            Positioned(
                child: Column(
              children: <Widget>[
                Text(
                  shoesItem.model,
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
