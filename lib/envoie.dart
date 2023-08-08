import 'package:flutter/material.dart';

import 'FormulaireEnvoie.dart';

class Envoie extends StatelessWidget {
  const Envoie({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      debugShowCheckedModeBanner: false,
      home: FormulaireEnvoie(),
    );
  }
}
