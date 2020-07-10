import 'package:flutter/material.dart';


class Location extends StatefulWidget {
  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {

  int counter = 0;

  void getData() async {
    String username = await Future.delayed(Duration(seconds: 3), () {
      return "testowanie future delayed";
    });
        String mniejszyDelay = await Future.delayed(Duration(seconds: 2), () {
      return "Mniejszy delay";
    });

    print("$username, $mniejszyDelay");
  }

  @override
  void initState() {
    super.initState();
    print("initstate działa");
    getData();
  }

  @override
  Widget build(BuildContext context) {
    print("Build działa");
    return SafeArea(
      child: Scaffold(
      body: RaisedButton(
        onPressed: () {
          setState(() {
            counter += 1;
          });
        },
        child: Text("Counter jest równy $counter"),
      ),
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Location"),
        backgroundColor: Colors.grey[400],
        centerTitle: true,
        elevation: 0,
      ),
      ),
    );
  }
}