import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:assignmrnt_7/result_card.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late String _text = '';
  late Color _color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('assignment 7'),
        ),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlatButton(
                  onPressed: () {
                    setState(() {
                      ResultCard(
                        colour: Colors.blue,
                        text: 'This is Screen 1',
                      );
                      _color = Colors.blue;
                      _text = 'This is Screen 1';
                    });
                  },
                  child: Text('Screen 1'),
                  color: Colors.blue,
                  height: 50.0,
                  minWidth: 150.0,
                ),
                FlatButton(
                  onPressed: () {
                    setState(() {
                      ResultCard(
                        colour: const Color(0xFFEF5350),
                        text: 'This is Screen 2',
                      );
                      _color = Color(0xFFEF5350);
                      _text = 'This is Screen 2';
                    });
                  },
                  child: Text('Screen 2'),
                  color: Colors.red[400],
                  height: 50.0,
                  minWidth: 150.0,
                ),
              ],
            ),
          ),
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                  child: Center(
                      child: Text(
                    _text,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
                  )),
                  decoration: BoxDecoration(
                    color: _color,
                    borderRadius: BorderRadius.circular(10.0),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
