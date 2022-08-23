import 'package:flutter/material.dart';
import 'package:porfolio/les_widgets/Menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 10), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Hom()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orange,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.asset(
                  "assets/images/profile.jpg",
                  height: 100.0,
                  width: 100.0,
                ),
              ),
              Divider(
                height: 10,
              ),
              Text("Portfolio de Medoune Fall"),
              const CircularProgressIndicator(
                color: Colors.white,
              )
            ],
          ),
        ));
  }
}

class Hom extends StatelessWidget {
  const Hom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(backgroundColor: Colors.red, title: Text("Accueil")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(top: 120)),
            ClipRRect(
              borderRadius: BorderRadius.circular(50.0),
              child: Image.asset(
                "assets/images/profile.jpg",
                height: 100.0,
                width: 100.0,
              ),
            ),

            Text(
              "Je suis Medoune Fall",
              style: TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            // Divider(
            //   height: 10,
            // ),
            Text(
              "Developpeur Mobile Flutter",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.normal),
            ),
            Divider(
              height: 5,
            ),
            Text(
              "Je m'appelle Medoune Fall, Apprenant a Xarala.",
              style: TextStyle(color: Colors.black),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
