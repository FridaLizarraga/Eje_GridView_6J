import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
} //Funcion principal

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Aprendiendo Gridview',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: MyHomePage());
  }
} //widget sin estado

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);
  @override
  _MyHomePageState createState() => _MyHomePageState();
} //Widget con estado

class _MyHomePageState extends State<MyHomePage> {
  List<String> images = [
    "assets/images/camisa.jpg",
    "assets/images/blusa.jpg",
    "assets/images/blusanegra.jpg",
    "assets/images/pantalon.jpg",
    "assets/images/playera.jpg",
    "assets/images/playeraniña.jpg",
    "assets/images/camisa.jpg",
    "assets/images/camisa.jpg",
    "assets/images/blusa.jpg",
    "assets/images/blusanegra.jpg",
    "assets/images/pantalon.jpg",
    "assets/images/playera.jpg",
    "assets/images/playeraniña.jpg",
    "assets/images/camisa.jpg",
    "assets/images/blusa.jpg",
    "assets/images/camisa.jpg",
    "assets/images/blusa.jpg",
    "assets/images/camisa.jpg",
    "assets/images/blusa.jpg",
    "assets/images/camisa.jpg",
    "assets/images/blusa.jpg",
    "assets/images/blusanegra.jpg",
    "assets/images/pantalon.jpg",
    "assets/images/playera.jpg",
    "assets/images/playeraniña.jpg",
    "assets/images/camisa.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter GridView"),
        ),
        body: GridView.builder(
          itemCount: images.length,
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(images[index], fit: BoxFit.cover);
          },
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
