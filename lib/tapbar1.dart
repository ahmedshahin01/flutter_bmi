import 'package:flutter/material.dart';
import 'package:flutter_bmi/appcontent.dart';

class MyhomePage1 extends StatefulWidget {
  @override
  _MyhomePage1State createState() => _MyhomePage1State();
}

class _MyhomePage1State extends State<MyhomePage1> {
  bool male=true;
  bool female=false;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text("BMI"),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.male_outlined),text: 'Male',),
              Tab(icon: Icon(Icons.female_outlined),text: 'Female',),
            ],
          ),
        ),
        body:TabBarView(children: [ MyhomeContent(male), MyhomeContent(female),])
      ),
    );
  }
}
