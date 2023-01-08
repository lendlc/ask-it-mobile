import 'dart:async';
import 'dart:math';

import 'package:ask_it/constants.dart';
import 'package:flutter/material.dart';

class MiniGame1Screen extends StatefulWidget {
  static final String routeName = '/mini-game1';
  @override
  _MiniGame1ScreenState createState() => _MiniGame1ScreenState();
}

class _MiniGame1ScreenState extends State<MiniGame1Screen> {
  final Map<String, bool> score = {};
  late final Timer _timer;
  int timerCount = 20;

  final Map choices = {
    'name': 'String',
    '5': 'int',
    '10.0': 'float',
    'A': 'char',
    '!true': 'bool',
  };

  final Map colors = {
    'name': Colors.green[100],
    '5': Colors.blue[100],
    '10.0': Colors.red[200],
    'A': Colors.yellow[100],
    '!true': Colors.cyan[100]
  };

  int seed = 0;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (_) {
      setState(() {
        timerCount--;
      });

      if (timerCount == 0) Navigator.pushNamed(context, '/mini-game/result');
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Matching Game',
          style: mediumTextBold,
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              '00:$timerCount',
              style: largeTextBold,
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: choices.keys.map((item) {
                    return Draggable<String>(
                        data: item,
                        child: Container(
                          height: 100,
                          margin: EdgeInsets.only(bottom: 16),
                          child: Item(
                            value: score[item] == true ? '✓' : item,
                          ),
                        ),
                        feedback: Item(
                          value: item,
                        ),
                        childWhenDragging: Container(
                          margin: EdgeInsets.only(bottom: 16),
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.red[200],
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ));
                  }).toList(),
                ),
                SizedBox(
                  width: 64,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: choices.keys
                      .map((item) => _buildDragTarget(item))
                      .toList()
                    ..shuffle(
                      Random(2),
                    ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildDragTarget(item) {
    return DragTarget<String>(
      builder: (
        BuildContext context,
        List<String?> incoming,
        List rejected,
      ) {
        if (score[item] == true) {
          return Container(
            margin: EdgeInsets.only(bottom: 16),
            child: Text(
              '✓',
              style: TextStyle(fontSize: 18),
            ),
            decoration: BoxDecoration(
              color: Colors.greenAccent,
              borderRadius: BorderRadius.circular(10),
            ),
            alignment: Alignment.center,
            width: 100,
            height: 100,
          );
        } else {
          return Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              color: colors[item],
              borderRadius: BorderRadius.circular(10),
            ),
            width: 100,
            height: 100,
            child: Text(
              choices[item],
              style: mediumTextBold,
            ),
          );
        }
      },
      onWillAccept: (data) => data == item,
      onAccept: (data) {
        setState(() {
          score[item] = true;
        });

        if (score.length == 5) {
          _timer.cancel();
          Navigator.pushNamed(context, '/mini-game/result');
        }
      },
      onLeave: (data) {},
    );
  }
}

class Item extends StatelessWidget {
  final String value;

  Item({required this.value});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Material(
        color: primaryColor,
        child: Container(
          alignment: Alignment.center,
          height: 100,
          width: 100,
          padding: EdgeInsets.all(16),
          child: Text(
            value,
            style: TextStyle(color: Colors.black, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
