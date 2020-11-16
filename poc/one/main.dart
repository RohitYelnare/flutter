import 'package:flutter/material.dart';
import 'another.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      //home parameter is set to the first screen
      home: FirstView(),
    );
  }
}



class FirstView extends StatelessWidget {
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(title: Text("first screen navigation"),),
body: Center(
child: Column(
children: <Widget>[
Container(
child: Text("This is the first screen"),
),
Container(

child: RaisedButton(
child: Text("click the button"),
//onPressed: (){}, increase the click event, the parameter is an anonymous function
onPressed: (){
//Navigator.push(context, route)
Navigator.push(context, MaterialPageRoute(
builder: (context){return SecondView();} //Imported is an anonymous function
//builder:(context)=>SecondView()
));
},
),
),
],
),
),
);
}
}


/**
    RaisedButton button assembly
    It has two most basic properties:

    Child: can be placed in a container, icon, text. Lets you build colorful buttons.
    onPressed: The response of the click event, understood as the need to pass the function to execute, usually call the Navigator component.
    onPressed: (){}, increase the click event, the parameter is an anonymous function

    Navigator.push and Navigator.pop
    Navigator.push: Jump to the next page, it accepts two parameters, one is the context context, and the other is the function to jump.
    Navigator.push(context, route)




    Navigator.pop: is to return to the previous page, passing a context parameter when using it. Note that you must have a superior page, that is, the superior page uses Navigator.push.
    Navigator.pop(context)
    Using these two navigations, the first view clicks into the second view, the first view does not disappear, is overwritten


    MaterialPageRoute() routing component,
    The build parameter is an anonymous function, build:(context){return }
    Note that the anonymous function is passed in. To do the return value, there are two ways to write it.
    Builder: (context){return SecondView();} //Imported is an anonymous function
    builder:(context)=>SecondView()



    Button click to enter
    onPressed: (){
    //Navigator.push(context, route)
    Navigator.push(context, MaterialPageRoute(
    builder: (context)=>SecondView()
    ));
    },

    Button click to return

    onPressed: (){
    / / Navigator.pop (context), return to the previous view,
    Navigator.pop(context);
    },
 */