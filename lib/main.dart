import 'package:flutter/material.dart';
import 'package:mynewapp/firstscreen.dart';
import 'package:mynewapp/secondscreen.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomePage();
}

class _HomePage extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://r1.ilikewallpaper.net/iphone-wallpapers/download/34641/Pastel-Colorful-Smooth-Lines-iphone-wallpaper-ilikewallpaper_com.jpg"),
            ),
          ),
          child: Column(
            children: [
              Container(
                  height: 150,
                  alignment: Alignment.center,
                  child: Text(
                    "Welcome to our travel app",
                    style: TextStyle(fontSize: 25, fontFamily: 'Open Sans'),
                  ),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 238, 250, 172),
                    border: Border.all(
                        color: Colors.cyan,
                        width: 10,
                        style: BorderStyle.solid),
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  )),
              Divider(
                height: 200,
              ),
              ElevatedButton.icon(
                  icon: Icon(Icons.favorite),
                  onPressed: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return screen1();
                    }));
                  }),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lime,
                      shadowColor: Colors.green,
                      elevation: 30,
                      textStyle: TextStyle(fontSize: 25)),
                  label: Text("Your Prefrence Page")),
              Divider(height: 20),
              ElevatedButton.icon(
                  icon: Icon(Icons.favorite),
                  onPressed: (() {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return screen2();
                    }));
                  }),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.cyan,
                      shadowColor: Colors.cyan,
                      elevation: 30,
                      textStyle: TextStyle(fontSize: 25)),
                  label: Text("Fill your information")),
            ],
          ),
        ));
  }
}
