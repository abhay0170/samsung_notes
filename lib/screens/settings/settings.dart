import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    
    final isOn = false;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        title: Text("Samsung Note Settings"),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Sync with Syamsung Cloud"),
                        Text("user10@gmail.com"),
                        Text("Wifi Only"),
                      ],
                    ),
                    Spacer(),
                    // ignore: non_constant_identifier_names
                    CupertinoSwitch(value: isOn, onChanged: (bool Value) {})
                  ],
                ),
                Divider(),
                Text("Sync to Microsoft OneNote"),
                Text(
                    "sign in to your Microsoft account to get your \nnotes in Microsoft apps.")
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 5),
            child: Text("Shared notes"),
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Sync shared notes using "),
                Text("wifi only")
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 5),
            child: Text("General"),
          ),
          Container(
            padding: EdgeInsets.all(10),
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                color: Colors.cyan,
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Sync shared notes using "),
                Text("wifi only")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
