import 'package:flutter/material.dart';
import 'package:lizarraga/girdviewempleados.dart';

void main() {
  runApp(SuburbiaApp());
} //Funcion principal

class SuburbiaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Aprendiendo Gridview',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: PaginaInicial());
  }
} //widget sin estado
