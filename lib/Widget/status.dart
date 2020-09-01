import 'package:flutter/material.dart';
import 'package:messangerclone_flutter/Screen/Home.dart';

void main() {
  runApp(StatusWidgetPage());
}

class StatusWidgetPage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StateWidget();
  }
}

class StateWidget extends StatefulWidget {
  StateWidget({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _StateWidgetState createState() => _StateWidgetState();
}

class _StateWidgetState extends State<StateWidget> {

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all( 12),
      child: CircleAvatar(
        radius: 30,
        backgroundColor: Colors.grey[300],
        backgroundImage: NetworkImage("https://i.pinimg.com/originals/99/b1/2b/99b12b4652764ce926cd908ec1947842.jpg"),
      ),
    );
  }
}
