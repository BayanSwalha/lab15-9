import 'package:flutter/material.dart';

import 'package:mynewapp/main.dart';

class screen2 extends StatefulWidget {
  const screen2({super.key});

  @override
  State<screen2> createState() => _nameState();
}

class _nameState extends State<screen2> {
  bool pets = false;
  bool medicine = false;
  bool weapons = false;
  String pick = "";

  List myitems = ["1 Person", "2-5 Person", "6-9 Person"];
  String myselectedITem = "2-5 Person";
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
                    "https://www.runtoradiance.com/wp-content/uploads/2015/08/pastel-striped-wallpaper-578x1024.jpg"),
              ),
            ),
            child: SingleChildScrollView(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: Color.fromARGB(255, 232, 232, 156),
                  child: Text(
                    "Please enter your informatiom",
                    style: TextStyle(
                        fontSize: 25, color: Color.fromARGB(255, 57, 7, 66)),
                  ),
                ),
                Divider(
                  height: 50,
                ),
                Text(
                  "How many person?",
                  style: TextStyle(fontSize: 25, color: Colors.pink),
                ),
                Divider(
                  color: Colors.cyan,
                  thickness: 3,
                ),
                DropdownButton(
                    isExpanded: true,
                    dropdownColor: Color.fromARGB(255, 246, 172, 196),
                    value: myselectedITem,
                    items: myitems
                        .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(
                              "$e",
                              style: TextStyle(fontSize: 20),
                            )))
                        .toList(),
                    onChanged: ((value) {
                      setState(() {
                        myselectedITem = value.toString();
                      });
                    })),
                Divider(
                  height: 50,
                ),
                Text(
                  "Please Select your class!",
                  style: TextStyle(fontSize: 25, color: Colors.pink),
                ),
                Divider(
                  color: Colors.cyan,
                  thickness: 3,
                ),
                RadioListTile(
                  title: Text(
                    "Business",
                    style: TextStyle(fontSize: 20),
                  ),
                  value: "business",
                  subtitle: Text(
                    "Hot!! only 200 per person",
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  groupValue: pick,
                  onChanged: (value) {
                    setState(() {
                      pick = value.toString();
                    });
                  },
                ),
                RadioListTile(
                  title: Text(
                    "Economy",
                    style: TextStyle(fontSize: 20),
                  ),
                  value: "ecnomy",
                  subtitle: Text(
                    "Hot!! 50 per person",
                    style: TextStyle(color: Colors.blueGrey),
                  ),
                  groupValue: pick,
                  onChanged: (value) {
                    setState(() {
                      pick = value.toString();
                    });
                  },
                ),
                Divider(height: 50),
                Text(
                  "Please Select whatever you have during the trip",
                  style: TextStyle(fontSize: 25, color: Colors.pink),
                ),
                Divider(
                  color: Colors.cyan,
                  thickness: 3,
                ),
                CheckboxListTile(
                  secondary: Icon(Icons.pets),
                  title: Text("Pets"),
                  subtitle: Text("Eg. Cats,Dogs,Rabbits"),
                  value: pets,
                  onChanged: ((value) {
                    setState(() {
                      pets = value!;
                    });
                  }),
                ),
                CheckboxListTile(
                  secondary: Icon(Icons.medication),
                  title: Text("Medicine"),
                  subtitle: Text("Eg. Panadol"),
                  value: medicine,
                  onChanged: ((value) {
                    setState(() {
                      medicine = value!;
                    });
                  }),
                ),
                CheckboxListTile(
                  secondary: Icon(Icons.pets),
                  title: Text("Weapons"),
                  subtitle: Text("Eg. guns,knives"),
                  value: weapons,
                  onChanged: ((value) {
                    setState(() {
                      weapons = value!;
                    });
                  }),
                ),
                Divider(height: 50),
                ElevatedButton.icon(
                  icon: Icon(Icons.home),
                  onPressed: () {
                    setState(() {
                      Navigator.pop(context,
                          MaterialPageRoute(builder: ((context) {
                        return MyApp();
                      })));
                    });
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      shadowColor: Colors.cyan,
                      elevation: 30,
                      textStyle: TextStyle(fontSize: 25)),
                  label: Text("Home page"),
                ),
              ],
            ))));
  }
}
