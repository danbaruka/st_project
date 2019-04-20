import 'package:flights_app/home_page.dart';
import 'package:flights_app/myCompteMoney/colored_card_page.dart';
import 'package:flights_app/myCompteMoney/custom_gift_card.dart';
import 'package:flights_app/myCompteMoney/first_page.dart';
import 'package:flights_app/myCompteMoney/pass_code_page.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

//void main() => runApp(HomeScreen());

//class HomeScreen extends StatelessWidget {
//  // This widget is the root of your application.
//  @override
//  Widget build(BuildContext context) {
//    return MaterialApp(
//      title: 'Flutter Demo',
//      theme: ThemeData(
//        // This is the theme of your application.
//        //
//        // Try running your application with "flutter run". You'll see the
//        // application has a blue toolbar. Then, without quitting the app, try
//        // changing the primarySwatch below to Colors.green and then invoke
//        // "hot reload" (press "r" in the console where you ran "flutter run",
//        // or simply save your changes to "hot reload" in a Flutter IDE).
//        // Notice that the counter didn't reset back to zero; the application
//        // is not restarted.
//        primarySwatch: Colors.blue,
//      ),
//      debugShowCheckedModeBanner: false,
//      home: MyHomePage(title: ''),
//    );
//  }
//}
////
class MyHomePageScreen extends StatefulWidget {
//  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

//  final String title;

  @override
  HomeScreen createState() => HomeScreen();
}

class HomeScreen extends State<MyHomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomPadding: false,
        appBar: new AppBar(
          title: GestureDetector(
            child: new Text("SMART TICKET"),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
          actions: <Widget>[
            new Stack(
              alignment: Alignment.topLeft,
              children: <Widget>[
                new IconButton(
                    icon: new Icon(
                      Icons.chat,
                      color: Colors.white,
                    ),
                    onPressed: () {}),
                new CircleAvatar(
                  radius: 8.0,
                  backgroundColor: Colors.blue,
                  child: new Text(
                    "0",
                    style: new TextStyle(color: Colors.white, fontSize: 12.0),
                  ),
                )
              ],
            )
          ],
        ),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountName: new Text('Email'),
                accountEmail: new Text('danamphred@gmail.com'),
                currentAccountPicture: new GestureDetector(
                  child: new CircleAvatar(
                    backgroundColor: Colors.lightBlue,
                    child: new Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                ),
                decoration: new BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              new InkWell(
                onTap: () {},
                child: new ListTile(
                  title: new Text('Home',
                      style: new TextStyle(color: Colors.blue)),
                  leading: new Icon(
                    Icons.home,
                    color: Colors.lightBlue,
                  ),
                ),
              ),
              new InkWell(
                onTap: () {
                  Navigator.of(context).pushReplacement(
                    new MaterialPageRoute(
                      builder: (BuildContext context) {
                        return new ColoredCardPage();
                      },
                    ),
                  );
                },
                child: new ListTile(
                  title: new Text('Mes billes',
                      style: new TextStyle(color: Colors.blue)),
                  leading: new Icon(
                    Icons.call_to_action,
                    color: Colors.lightBlue,
                  ),
                ),
              ),
              new InkWell(
                onTap: () {},
                child: new ListTile(
                  title: new Text('Historique de Voyage',
                      style: new TextStyle(color: Colors.blue)),
                  leading: new Icon(
                    Icons.history,
                    color: Colors.lightBlue,
                  ),
                ),
              ),
              new InkWell(
                onTap: () {},
                child: new ListTile(
                  title: new Text('Alert',
                      style: new TextStyle(color: Colors.blue)),
                  leading: new Icon(
                    Icons.alarm,
                    color: Colors.lightBlue,
                  ),
                ),
              ),
              new InkWell(
                onTap: () {},
                child: new ListTile(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) {
                return PassCodeScreen();
              }));
                  },
                  title: new Text('Mon Compte smart',
                      style: new TextStyle(color: Colors.blue)),
                  leading: new Icon(
                    Icons.assistant_photo,
                    color: Colors.lightBlue,
                  ),
                ),
              ),
              new InkWell(
                onTap: () {},
                child: new ListTile(
                  title: new Text('Profil',
                      style: new TextStyle(color: Colors.blue)),
                  leading: new Icon(
                    Icons.people,
                    color: Colors.lightBlue,
                  ),
                ),
              ),
              new Divider(
                color: Colors.red,
                height: 4.0,
              ),
              new InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return CustomGiftCardPage();
                      },
                    ),
                  );
                },
                child: new ListTile(
                  title: new Text('Apropos de SmartTicket',
                      style: new TextStyle(color: Colors.blue)),
                  leading: new Icon(
                    Icons.settings,
                    color: Colors.lightBlue,
                  ),
                ),
              ),
              new InkWell(
                onTap: () {},
                child: new ListTile(
                  title: new Text(
                    'Aide',
                    style: new TextStyle(color: Colors.blue),
                  ),
                  leading: new Icon(
                    Icons.help,
                    color: Colors.lightBlue,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 110),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.60,
                      child: buildGrid(context),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.blue[600],
                                Colors.blue[500],
                                Colors.blue,
                                Colors.blue[400],
                                Colors.blue[300]
                              ])),
                      margin: EdgeInsets.only(left: 12, right: 12),
                    )
                  ],
                )
              ],
            )
          ],
        ));
  }

  @override
  Widget buildGrid(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
      crossAxisCount: 2,
      shrinkWrap: true,
      childAspectRatio: (MediaQuery.of(context).size.width - 60 / 2) / 300,
      children: <Widget>[
        buildTile(context, 0, "TAXI", null, Icons.directions_car, "O items",
            Colors.orange, Colors.orange[50]),
        buildTile(context, 1, "BUS", null, Icons.directions_bus, "O items",
            Colors.blue, Colors.blue[50]),
        buildTile(context, 2, "BATEAU", null, Icons.directions_boat, "0 items",
            Colors.purple, Colors.purple[50]),
        buildTile(context, 3, "AVION", null, Icons.local_airport, "0 items",
            Colors.red, Colors.red[50]),
      ],
    );
  }

  int _selectedIndex = -1;

  @override
  Widget buildTile(BuildContext context, int index, String heading, Image image,
      IconData icon, String itemCount, Color color, Color backgroundColor) {
    return Container(
      padding: EdgeInsets.only(
          left: index == 0 || index == 2 || index == 4 ? 12 : 5,
          top: 0,
          right: index == 1 || index == 3 || index == 5 ? 12 : 5,
          bottom: 10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(10)),
      child: GestureDetector(
        onTap: () {
          setState(() {
            _selectedIndex = index;
            if (_selectedIndex == 0) {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            }
          });
          print("tapped");
        },
        child: Card(
            elevation: 3,
            shape: RoundedRectangleBorder(
                side: BorderSide(
                    width: 1.0,
                    style: BorderStyle.solid,
                    color: _selectedIndex == index && color != null
                        ? color
                        : Colors.white),
                borderRadius: BorderRadius.circular(10)),
            color: Colors.white,
            child: Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Stack(
                  alignment: Alignment(0, 0),
                  children: <Widget>[
                    Container(
                      width: 43,
                      height: 43,
                      decoration: BoxDecoration(
                          color: backgroundColor,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    index == 4
                        ? IconButton(
                            icon: image,
                            onPressed: () {},
                          )
                        : Icon(
                            icon,
                            color: color,
                            size: 30.0,
                          ),
                    index != 1
                        ? SizedBox(
                            height: 4,
                          )
                        : SizedBox(
                            height: 0,
                          ),
                  ],
                ),
                Text(
                  heading,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 4,
                ),
                Text(
                  itemCount,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                      fontWeight: FontWeight.w300),
                )
              ],
            ))),
      ),
//      ),
    );
  }
}