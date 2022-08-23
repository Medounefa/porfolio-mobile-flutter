import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'Menu.dart';

class Contact extends StatefulWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      drawer: Menu(),
      appBar: AppBar(
        title: Text("Contact"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: "Nom",
                hintText: "Entrer votre nom",
                icon: Icon(Icons.person, color: Colors.blue, size: 25),
              ),
              keyboardType: TextInputType.text,
              // autocorrect: true,
              // autofocus: true,
            ),
            Divider(height: 30),
            //next champ input
            TextField(
              decoration: InputDecoration(
                labelText: "Phone",
                hintText: "Entrer votre numero de telephone",
                icon: Icon(Icons.phone, color: Colors.green, size: 25),
              ),
              keyboardType: TextInputType.number,
            ),
            Divider(height: 30),
            //Next champ
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Entrer votre Email",
                icon: Icon(Icons.lock, color: Colors.red, size: 25),
              ),
              keyboardType: TextInputType.text,
            ),

            TextField(
              decoration: InputDecoration(
                  labelText: "Message",
                  hintText: "Votre message",
                  icon: Icon(Icons.message, color: Colors.red, size: 25),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Colors.redAccent))),
              keyboardType: TextInputType.multiline,
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
