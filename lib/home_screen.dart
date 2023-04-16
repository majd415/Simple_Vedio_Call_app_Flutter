
import "package:flutter/material.dart";
import 'package:vediocall/video_call.dart';

import 'audio_call.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fluent App"),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
      ClipRRect(
      borderRadius: BorderRadius.circular(150.0),
      child: Image.network(
      "https://avatars.githubusercontent.com/u/73562926?v=4 ",
      height: 200.0,
      width: 200.0,
      fit: BoxFit.cover,
      ),
    ),
    Text(
    "Majd Hamooud",
    style: Theme.of(context).textTheme.headline3,
    ),
    Text(
    "+963994581836",
    style: Theme.of(context).textTheme.headline6,
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    IconButton(
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => VedioCallScreen()));
    },
    icon: Icon(
    Icons.video_call,
    size: 44,
    ),
    color: Colors.teal,
    ),
    IconButton(
    onPressed: () {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => AudioCallScreen()));
    },
    icon: Icon(
    Icons.phone,
    size: 35,
    ),
    color: Colors.teal,
    ),
    ],
    ),
    ),
    ],
    ),
    );
  }
}