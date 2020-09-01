import 'package:flutter/material.dart';
import 'package:messangerclone_flutter/Data/Chat.dart';
import 'package:messangerclone_flutter/Widget/Chat.dart';
import 'package:messangerclone_flutter/Widget/status.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Messanger Clone Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Messanger Clone Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 25,
                              backgroundImage: NetworkImage('https://upload.wikimedia.org/wikipedia/en/thumb/c/cb/Robert_Downey_Jr._as_Iron_Man_in_Avengers_Infinity_War.jpg/220px-Robert_Downey_Jr._as_Iron_Man_in_Avengers_Infinity_War.jpg'),
                            ),
                          ),

                          Positioned(
                              right: 2,
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(color: Colors.white, width: 3)
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 8, right: 8),
                                  child: Text("+9", style: TextStyle(fontSize: 13, color: Colors.white, fontWeight: FontWeight.w600),),
                                ),
                              ))
                        ],
                      ),

                      Text("Chats", style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        child: Icon(Icons.camera_alt, color: Colors.black,),
                      ),

                      SizedBox(width: 10,),

                      CircleAvatar(
                        backgroundColor: Colors.grey[200],
                        child: Icon(Icons.edit, color: Colors.black,),
                      )
                    ],
                  ),
                ),
              ],
            ),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(left: 14, right: 14),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(25)
                ),
                width: MediaQuery.of(context).size.width - 40,
                child: Padding(
                  padding: const EdgeInsets.only(left:12),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Search",
                        border: InputBorder.none,
                        icon: Icon(Icons.search)
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 10,
            ),

            Container(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey[300],
                      child: Icon(Icons.add, size: 24, color: Colors.black),),
                  ),
                  StatusWidgetPage(),
                ],
              ),
            ),
            Container(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: chat.length,
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index){
                    return Container(
                      child: ChatWidget(chat: chat[index],),
                    );
                  }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
