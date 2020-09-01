import 'package:flutter/material.dart';

/*
    Stack reference - https://stackoverflow.com/questions/44004451/navigator-operation-requested-with-a-context-that-does-not-include-a-navigator

    The main reason why Navigator is not working is because MyApp is not under MaterialApp.
    You need material app to access the Navigator !
    ** The solution is to make the MaterialApp the parent meaning on the top of everything
 */

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    // ignore: missing_return
    Widget _buildList(String imageLocation, String title){
      return ListTile(
        title: Text(title),
        leading: CircleAvatar(
          backgroundImage: AssetImage(imageLocation),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('All Articles'),

      ),
      //
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          _buildList('images/aarn-giri-xucZ20Vjiy8-unsplash.jpg', 'Flower'),
          _buildList('images/tapio-haaja-I9SWvZ9sO2U-unsplash.jpg', 'Helsinki'),
          _buildList('images/delfina-iacub-zsgJdHDP4IE-unsplash.jpg', 'Mountain'),
        ],
      ),
    );
  }
}
