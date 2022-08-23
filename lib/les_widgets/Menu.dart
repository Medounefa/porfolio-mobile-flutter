import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:porfolio/les_widgets/Contact.dart';
import 'package:porfolio/les_widgets/PortFolio.dart';
// import 'package:flutter/src/foundation/key.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:porfolio/les_widgets/Services.dart';
import 'package:porfolio/les_widgets/Skills.dart';
import 'package:porfolio/les_widgets/WorkExperience.dart';
import 'package:porfolio/main.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.orange,
        padding: EdgeInsets.zero,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Medoune Fall"),
              accountEmail: Text("Medoune99.fall@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image.asset(
                    "assets/images/profile.jpg",
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text("Accueil"),
              leading: Icon(Icons.home),
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: ((context) => Home())));
              },
            ),
            ListTile(
              title: Text("Competences"),
              leading: Icon(Icons.person),
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Skills()));
              },
            ),
            ListTile(
              title: Text("Services"),
              leading: Icon(Icons.supervised_user_circle),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: ((context) => Services())),
                );
              },
            ),
            ListTile(
              title: Text("Experience professionnelle"),
              leading: Icon(Icons.computer),
              onTap: () {
                Navigator.pushReplacement(
                    context, MaterialPageRoute(builder: (context) => Work()));
              },
            ),
            ListTile(
              title: Text("Portfolio"),
              leading: Icon(Icons.work),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: ((context) => Portfolio())),
                );
              },
            ),
            ListTile(
              title: Text("Contact"),
              leading: Icon(Icons.contact_mail),
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: ((context) => Contact())),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
