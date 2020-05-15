import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // Helps the hot reload and restart to work // Can use stless as a shortcut
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.pinkAccent,
        /* // --> CONTAINER WIDGET
        body: SafeArea(
          // Mobile screens are different for different phones, So safe area helps to place the content only in the visible part
          child: Container(
            // A container has only one child // It takes up most of the area if no child is there under it
            height: 100.0,
            width: 100.0,
            margin: EdgeInsets.all(
                50.0), // Margin helps to leave a space outside a container border
            padding: EdgeInsets.all(
                20.0), // Padding helps to leave a space inside a container border
            color: Colors.white,
            child: Text(
                'Hello'), // It can have only one thing inside it, eg., text but not text and image
          ),
        ),
         */
        /* // --> COLUMN WIDGET
        body: SafeArea(
            child: Column(
          // It has many children // It arranges its children in vertical order
          /*verticalDirection: VerticalDirection.up, // It helps to place the children from bottom to up(1st in the bottom and then goes on)
          verticalDirection: VerticalDirection.down, // It helps tp place the children from top to bottom(default)(1st in the top)
          mainAxisAlignment: MainAxisAlignment.start, // start --> default like VD.DOWN, try others too like spaceAround, spaceBetween etc.*/
          crossAxisAlignment: CrossAxisAlignment
              .end, // Right side alignment of the containers relative to the largest width container
          /*crossAxisAlignment: CrossAxisAlignment
                  .stretch, // Helps to stretch all the containers inside this column to infinity */
          children: <Widget>[
            // An array of container widgets
            Container(
              height: 100.0,
              width: double
                  .infinity, // Extends the container to full width(screen)
              color: Colors.white,
              child: Text('Container1'),
            ),
            Container(
              // Helps to leave space between two containers
              width: double.infinity,
              height: 10.0,
            ),
            Container(
              height: 100.0,
              width: 300.0,
              color: Colors.red,
              child: Text('Container2'),
            ),
            SizedBox(
              // Also leaves space between the containers
              height: 10.0,
            ),
            Container(
              height: 100.0,
              width: 100.0,
              color: Colors.blue,
              child: Text('Container3'),
            ),
          ],
        )),
        */
        /* // --> ROW WIDGET
        body: SafeArea(
          child: Row(
            // It has many children // It arranges its children in horizontal order
            /*verticalDirection: VerticalDirection.up, // It helps to place the children from bottom to up(1st in the bottom and then goes on)
          verticalDirection: VerticalDirection.down, // It helps tp place the children from top to bottom(default)(1st in the top)
          mainAxisAlignment: MainAxisAlignment.start, // start --> default like VD.DOWN, try others too like spaceAround, spaceBetween etc.*/
            /*crossAxisAlignment: CrossAxisAlignment
                  .stretch, // Helps to stretch all the containers inside this column to infinity */
            children: <Widget>[
              // An array of container widgets
              Container(
                width: 100.0,
                height: double
                    .infinity, // Extends the container to full width(screen)
                color: Colors.white,
                child: Text('Container1'),
              ),
              Container(
                // Helps to leave space between two containers
                height: double.infinity,
                width: 10.0,
              ),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.red,
                child: Text('Container2'),
              ),
              SizedBox(
                // Also leaves space between the containers
                width: 10.0,
              ),
              Container(
                height: 100.0,
                width: 100.0,
                color: Colors.blue,
                child: Text('Container3'),
              ),
            ],
          ),
        ),*/
        /* // --> LAYOUT CHALLENGE
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                height: double.infinity,
                width: 100.0,
                child: Text('Container1'),
                color: Colors.red,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 100.0,
                    width: 100.0,
                    child: Text('Container2'),
                    color: Colors.yellow,
                  ),
                  Container(
                    height: 100.0,
                    width: 100.0,
                    child: Text('Container3'),
                    color: Colors.green,
                  ),
                ],
              ),
              Container(
                height: double.infinity,
                width: 100.0,
                child: Text('Container4'),
                color: Colors.blue,
              ),
            ],
          ),
        ),
        */
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                maxRadius: 50.0,
                backgroundImage: AssetImage('images/varshaa.jpg'),
              ),
              Text(
                'Varshaa D',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 40.0,
                  color: Colors.white,
                ),
              ),
              Center(
                child: Text(
                  'Developer and Data Science Enthusiast',
                  style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 18.0,
                    color: Colors.white,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              /*Container( // CREATING LIST TILES USING ROWS AND COLUMNS(PHONE)
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 30.0,
                ),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      color: Colors.pink,
                    ),
                    SizedBox(
                      width: 40.0,
                    ),
                    Text(
                      '+91 9677 29 3585',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'SourcesSansPro',
                        fontWeight: FontWeight.bold,
                        color: Colors.pink,
                      ),
                    ),
                  ],
                ),
              ), */
              /*Container( // CREATING LIST TILES USING ROWS AND COLUMNS(EMAIL)
                color: Colors.white,
                margin: EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 30.0,
                ),
                padding: EdgeInsets.all(10.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Icons.email,
                      color: Colors.pink,
                    ),
                    SizedBox(
                      width: 40.0,
                    ),
                    Text(
                      'varshaadhanasekar@gmail.com',
                      style: TextStyle(
                        fontSize: 17.0,
                        fontFamily: 'SourcesSansPro',
                        fontWeight: FontWeight.bold,
                        color: Colors.pink,
                      ),
                    ),
                  ],
                ),
              ),*/
              SizedBox(
                height: 10.0,
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.white,
                  thickness: 1.0,
                ),
              ),
              Card(
                // PHONE CARD USING LIST TILE
                margin: EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 30.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.pink,
                  ),
                  title: Text(
                    '+91 9677 29 3585',
                    style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: 'SourcesSansPro',
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                  ),
                ),
              ),
              Card(
                // EMAIL CARD USING LIST TILE
                margin: EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 30.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.pink,
                  ),
                  title: Text(
                    'varshaadhanasekar@gmail.com',
                    style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: 'SourcesSansPro',
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                  ),
                ),
              ),
              Text(
                'LinkedIn, GitHub, Twitter, Kaggle',
                style: TextStyle(
                  fontFamily: 'SourceSansPro',
                  fontSize: 15.0,
                  color: Colors.white,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Card(
                // MEDIA CARD USING LIST TILE
                margin: EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 30.0,
                ),
                child: ListTile(
                  leading: Icon(
                    Icons.forum,
                    color: Colors.pink,
                  ),
                  title: Text(
                    'Varshaa Dhanasekar',
                    style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: 'SourcesSansPro',
                      fontWeight: FontWeight.bold,
                      color: Colors.pink,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
