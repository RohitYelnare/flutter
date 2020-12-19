import 'package:flutter/material.dart';
import 'another.dart';
import 'AsanData.dart';
import 'global.dart' as global;
import 'dart:async';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: FirstView(),
    );
  }
}

class FirstView extends StatefulWidget {
  _State createState() => _State();
}

class _State extends State {
  int _counter = 0;
  int prepTime = 0;
  int duration = 0;
  int exitTime = 0;
  Timer _timer;

  // FirstView({Key key, @required this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
   print('FirstView build method start '+global.text);
    AsanData my1 = getAasanData(int.parse(global.text));
    String name = my1.name;
    prepTime = my1.prepTime;
    duration = my1.duration;
    exitTime = my1.exitTime;
    global.totalTime = prepTime + duration + exitTime;
    String action = getAction(prepTime, duration, exitTime);
    String text = global.text;
    return Scaffold(
      appBar: AppBar(
        title: Text("$name View "),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: Text(
                "$text Posture $name", style: TextStyle(fontSize: 30),),
            ),
            Container(
              child: Text("Time for $action", style: TextStyle(fontSize: 30),),
            ),
            Container(
              child: RaisedButton(
                child: Text("Go to next Posture ",),
                onPressed: () {
                  var x = int.parse(global.text) ;
                  global.text = x.toString();
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => SecondView(),
                  ));
                },
              ),
            ),
            Container(
              child: RaisedButton(
                child: Text("Reset ... ",),
                onPressed: () {
                  var x = int.parse(global.text) ;
                  global.text = x.toString();
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => FirstView(),
                  ));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    print('hi there initState one');
    _startTimer();
  }

  void _startTimer() {
    super.initState();
    _counter = 0;
    if (_timer != null) {
      _timer.cancel();
    }
    int stopaudio = 0;
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {

      setState(() {
        if (_counter >= 0) {
          _counter++;

          if (_counter % global.totalTime == 0) {
            int z=global.totalTime;
            print("FirstView increment "+_counter.toString() +"..global.text .."+ global.text+ " global total time "+z.toString());
            stopaudio = 1;
            var x = int.parse(global.text) + 1;
            global.text = x.toString();
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => SecondView(),
            ));
          }
        } else {
          _timer.cancel();
        }
      });
    });
  }

  String getAction(int lPrepTime, int lDuration, int lExitTime) {

    if(_counter%2 ==0 )
      {
        return " .. ";
      }

    if(_counter > lPrepTime )
      {
        if(_counter < lPrepTime + lDuration ) {
             return "Continue";
        }
        else {
          return " Getting out  ";
        }
      }
    else {
      return "Preparation";
    }

  }
}
