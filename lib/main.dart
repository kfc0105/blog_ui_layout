import 'AllArticlePage.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
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
      home: DashBoard(),
    );
  }
}

class DashBoard extends StatelessWidget {
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
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SecondRoute()),
                );
              },
              child: Text(
                'All Articles',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.lightBlueAccent,
                ),
              ),
            ),
          ),
        ],
      ),
    );

    Widget _buildCard(Color color, String Heading, String subHeading, String imageLocation, double leftMargin){
      return Container(
        margin: EdgeInsets.only(left: leftMargin),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
        ),
        width: 160,
        child: Card(
          elevation: 5,
          child: Wrap(
            children: [
              Image.asset(imageLocation, fit: BoxFit.cover, width: 160, height: 130,),
              Container(
                decoration: BoxDecoration(
                  color: color,
                ),
                child: ListTile(
                  title: Text(Heading, style: TextStyle(color: Colors.white),),
                  subtitle: Text(subHeading, style: TextStyle(color: Colors.white),),
                ),
              ),
            ],
          ),
        ),
      );
    }

    Color color = Colors.indigo[300];
    double spacesBetweenCards = 1;

    //***The scrolling has major lag, it should preload the image somewhere so it doesn't load when scrolling!!!!
    Widget horizontalList = Container(
      height: 210.0,
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            //_buildCard(color, 'hello', 'hi'),
            _buildCard(color, 'Flower', 'by Jonathan Pie', 'images/aarn-giri-xucZ20Vjiy8-unsplash.jpg', 20),
            _buildCard(color, 'Mountain', 'by Emily Low', 'images/delfina-iacub-zsgJdHDP4IE-unsplash.jpg', spacesBetweenCards),
            _buildCard(color, 'Desert', 'by Ken Miyahara', 'images/ilona-bellotto-1-dN-gWVehE-unsplash.jpg', spacesBetweenCards),
            _buildCard(color, 'Ocean Side', 'Ethan Brown', 'images/sam-moqadam-3wwp3A3yLdg-unsplash.jpg', spacesBetweenCards),
            _buildCard(color, 'Field', 'Jonathan Cook', 'images/stan-lisonek-EEt70fMgYRQ-unsplash.jpg', spacesBetweenCards),
            _buildCard(color, 'Flower', 'by Jonathan Pie', 'images/aarn-giri-xucZ20Vjiy8-unsplash.jpg', spacesBetweenCards),
            _buildCard(color, 'Mountain', 'by Emily Low', 'images/delfina-iacub-zsgJdHDP4IE-unsplash.jpg', spacesBetweenCards),
            _buildCard(color, 'Desert', 'by Ken Miyahara', 'images/ilona-bellotto-1-dN-gWVehE-unsplash.jpg', spacesBetweenCards),
            _buildCard(color, 'Ocean Side', 'Ethan Brown', 'images/sam-moqadam-3wwp3A3yLdg-unsplash.jpg', spacesBetweenCards),
            _buildCard(color, 'Field', 'Jonathan Cook', 'images/stan-lisonek-EEt70fMgYRQ-unsplash.jpg', spacesBetweenCards),
          ]
      ),
    );

    Widget textArticleOfTheDay = Container(
      margin: EdgeInsets.only(top: 30, bottom: 10, left: 25, right: 5),
      child: Text(
        'Article of the Day',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );

    //My attempt to create vertically scrollable card view
    /*
    Widget verticalList = Container(
      margin: EdgeInsets.all(30),
      child: SliverList(
      ),
    );

    */

    //vertical Scroll card builder widget
    Widget _buildVerticalScrollCard(){
      return Container(
        margin: EdgeInsets.only(left: 20, right: 20),
        child: Card(
          elevation: 3,
          child: Column(
            children: [
              Image.asset(
                'images/tapio-haaja-I9SWvZ9sO2U-unsplash.jpg',
                fit: BoxFit.cover,
                width: 400,
                height: 150,
              ),
              Container(
                decoration: BoxDecoration(
                  color: color,
                ),
                child: ListTile(
                  title: Text('Helsinki', style: TextStyle(color: Colors.white),),
                  trailing: Wrap(
                    spacing: 12,
                    children: [
                      Icon(Icons.favorite, color: Colors.white,),
                      Icon(Icons.bookmark, color: Colors.white,),
                      Icon(Icons.share, color: Colors.white,),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
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
          textArticleOfTheDay,
          _buildVerticalScrollCard(),
        ],
      ),
    );
  }
}
