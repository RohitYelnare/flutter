import 'package:flutter/material.dart';
import 'package:flutter_yoga1/routing_constants.dart';
import 'dart:async';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

class HomeView1 extends StatelessWidget {
  const HomeView1({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        Navigator.pushNamed(context,LoginViewRoute);
      }),

    );
  }
}
class HomeView extends StatefulWidget {
  @override
  HomeView({Key key, this.title}) : super(key: key);
  final String title;
  _State createState() => _State();
}

class _State extends State {
  int _counter = 0;
  Timer _timer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(

        padding: EdgeInsets.all(10),

    child: ListView(
    children: [
    Container(
    alignment: Alignment.topCenter,
    padding: EdgeInsets.all(10),
    margin: const EdgeInsets.only(top: 50),
    child: Text(
    'Pose1 ',
    style: TextStyle(
    color: Colors.lightGreen,
    fontWeight: FontWeight.w500,
    fontSize: 30),
    )),
            Container(
              alignment: Alignment.center,
              height: 608.0,
              width: 318.0,
              decoration: new BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage("assets/images/position1.jpg"),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
            Text(
              '$_counter',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 48,
              ),),
    ],
    )));
  }
  @override
  void initState() {
    super.initState();
    print('hi there');

    _startTimer();
  }

  void _startTimer() {
    _counter = 0;
    if (_timer != null) {
      _timer.cancel();
    }
    int stopaudio = 0;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        if (_counter >= 0) {
          _counter++;
          if(_counter%10 == 0)
          {
            print(" mod10 reached ");
            AudioCache cache = new AudioCache();
            stopaudio==0 ?  cache.play("sound1.mp3") : stopaudio =1 ;
          }
          if(_counter%20 ==0) {
            stopaudio = 1;
            Navigator.pushNamed(context,LoginViewRoute);
          }
          
        } else {
          _timer.cancel();
        }
      });
    });
  }
}