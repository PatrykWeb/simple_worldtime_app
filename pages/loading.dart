import 'package:flutter/material.dart';
import 'package:time_app/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  void worldGetTime() async {
    WorldTime worldTime = WorldTime(location: "Warsaw", url: "Europe/Warsaw");
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
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: SpinKitWave(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}