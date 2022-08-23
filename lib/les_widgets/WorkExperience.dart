import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:porfolio/les_widgets/Menu.dart';

class Work extends StatefulWidget {
  const Work({Key? key}) : super(key: key);

  @override
  State<Work> createState() => _WorkState();
}

class _WorkState extends State<Work> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(
        title: Text("Experience professionnelle"),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "JAN 2020 - MARS 2020 : Stage a Xarala Dev web",
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
            Divider(
              height: 25,
            ),
            Text("JAN 2021 - MARS 2022 : Stage a Xarala Dev Mob",
                style: TextStyle(color: Colors.blue, fontSize: 18)),
            Divider(
              height: 25,
            ),
            Text("JAN 2022 - MARS 2022 : Stage a Xarala Designer",
                style: TextStyle(color: Colors.blue, fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
