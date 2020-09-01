import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    /*
        This widget was not under Scaffold so there was yellow highlight under all the texts
     */
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            elevation: 5,
            actions: [
              IconButton(icon: Icon(Icons.more_vert),
                color: Colors.white,
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Flower'),
            ),
          ),

          /*
                Reference for the below widget https://api.flutter.dev/flutter/widgets/SliverFillRemaining-class.html
         */
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Stack(
                  children: [
                    Image.asset(
                      //I am genius I figured it out over here nice !
                      'images/aarn-giri-xucZ20Vjiy8-unsplash.jpg',
                      width: 500,
                      height: 300,
                      fit: BoxFit.fitWidth,
                    ),
                    Positioned(
                      top: 200,

                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white70,
                            width: 10,
                          ),
                        ),
                        child: Text(
                            'by Jonathan Pie',
                            style: TextStyle(
                              backgroundColor: Colors.white70,
                              fontSize: 20,
                            ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(25),
                  child: Text(
                    'Chapter I',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 25, left: 25),
                  child: Text(
                    'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                        'Alps. Situated 1,578 meters above sea level, it is one of the '
                        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                        'half-hour walk through pastures and pine forest, leads you to the '
                        'lake, which warms to 20 degrees Celsius in the summer. Activities '
                        'enjoyed here include rowing, and riding the summer toboggan run.',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(25),
                  child: Text(
                    'Chapter II',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 25, left: 25, bottom: 25),
                  child: Text(
                    'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
                        'Alps. Situated 1,578 meters above sea level, it is one of the '
                        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
                        'half-hour walk through pastures and pine forest, leads you to the '
                        'lake, which warms to 20 degrees Celsius in the summer. Activities '
                        'enjoyed here include rowing, and riding the summer toboggan run.',
                    style: TextStyle(
                      fontSize: 17,
                    ),
                  ),
                ),
              ]
            ),
          ),
        ],
      ),
    );
  }
}
