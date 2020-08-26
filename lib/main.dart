import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Widget textField = Container(
      padding: EdgeInsets.all(15),
      child: TextField(
        decoration: InputDecoration(
          icon: Icon(Icons.search, size: 35, color: Colors.black54,),
          hintText: 'Search',
          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.lightGreen)),
          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.lightGreen)),
        ),
      ),
    );

    Widget textAndTextButton = Container(
      margin: EdgeInsets.only(top: 15, bottom: 10, left: 25, right: 5),
      child: Row(
        children: [
          //Expand comes first if you want space after the text !!!
          /*
              Expand is very important in layout
              https://api.flutter.dev/flutter/widgets/Expanded-class.html
           */
          Expanded(
            child: Text(
              'Articles',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          /*
          This container might be unnecessary
           */
          Container(
            child: FlatButton(
              child: Text(
                'All Articles',
                style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.lightBlueAccent,
               ),
             ),
            )
          ),
        ],
      ),
    );

    Widget _buildCard(Color color, String textTop, String textBottum){
      return Column(
        children: [

        ],
      );
    }


    /*
          Reference : https://flutter.dev/docs/cookbook/lists/horizontal-list

          *The first card and the last card need different spacing

          For the individual card, there has to be a builder, having the parameter
          *The card needs an image, two texts
     */

    //What does this color thing do?
    Color color = Theme.of(context).primaryColor;

    //need a column top is image and bottom is rect with two text(another column, top and buttom)
    Widget horizList = Column(

    );


    Widget horizontalList = Container(
      height: 200.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          //_buildCard(color, 'hello', 'hi'),

          //First
          Container(
            margin: EdgeInsets.only(left: 20),
            width: 160.0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4.0),
              child: Image.asset(
                'images/aarn-giri-xucZ20Vjiy8-unsplash.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),




          Container(
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
            ),
            width: 160.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
            ),
            width: 160.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 10),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
            ),
            width: 160.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 10, right: 20),
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
            ),
            width: 160.0,
          ),
        ],
      ),
    );


    return MaterialApp(
      /*
      A one-line description used by the device to identify the app for the user.
      On Android the titles appear above the task manager's app snapshots which are displayed
      when the user presses the "recent apps" button
       */
      title: 'Flutter Blog UI layout demo',
      theme: ThemeData(
        primaryColor: Colors.indigo[500],
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('DashBoard'),
          actions: [
            //no actions yet
            IconButton(icon: Icon(Icons.more_vert, color: Colors.white,),),
          ],
        ),
        drawer: Drawer(

        ),
        body: ListView(
          children: [
            /*
                Add widgets here from top to bottom
             */
            textField,
            textAndTextButton,
            horizontalList,
          ],
        ),
      ),
    );
  }
}
