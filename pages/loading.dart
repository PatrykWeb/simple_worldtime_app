import 'package:flutter/material.dart';
import 'package:time_app/services/world_time.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  void worldGetTime() async {
    WorldTime worldTime = WorldTime(location: "Juba", url: "Africa/Juba");
    await worldTime.getTime();
    Navigator.pushReplacementNamed(context, "/home", arguments: {
      "location": worldTime.location, 
      "time": worldTime.time, 
    });
  }

  @override
  void initState() {
    super.initState();
    worldGetTime();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(50.0),
          child: Text(""),
        ),
      ),
    );
  }
}