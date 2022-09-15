import 'package:flutter/material.dart';

import 'package:mynewapp/main.dart';

class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen11();
}

class _screen11 extends State<screen1> {
  String country = "";

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
                    "https://marketplace.canva.com/EAFJd1mhO-c/1/0/900w/canva-colorful-watercolor-painting-phone-wallpaper-qq02VzvX2Nc.jpg"),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Navigator.pop(context,
                            MaterialPageRoute(builder: ((context) {
                          return MyApp();
                        })));
                      });
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 240, 246, 190),
                        shadowColor: Colors.brown,
                        elevation: 30,
                        textStyle: TextStyle(fontSize: 25)),
                    child: Text("Back to your home page")),
                Divider(height: 100),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                          color: Colors.grey,
                          width: 2,
                          style: BorderStyle.solid),
                    ),
                    child: Text(
                      "Where you want to travel",
                      style: TextStyle(fontSize: 30),
                    )),
                RadioListTile(
                  secondary: Icon(Icons.cases_outlined),
                  title: Text("Jordan"),
                  value: "Jordan",
                  subtitle: Text("Eg. WadiRum "),
                  groupValue: country,
                  onChanged: (value) {
                    setState(() {
                      country = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text("UAE"),
                  value: "United Arab Emirates",
                  secondary: Icon(Icons.cases_outlined),
                  subtitle: Text("Eg. Dubai"),
                  groupValue: country,
                  onChanged: (value) {
                    setState(() {
                      country = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text("Egypt"),
                  secondary: Icon(Icons.cases_outlined),
                  value: "Egypt",
                  subtitle: Text("Eg. Sharm Al shaik "),
                  groupValue: country,
                  onChanged: (value) {
                    setState(() {
                      country = value.toString();
                    });
                  },
                ),
              ],
            )));
  }
}
