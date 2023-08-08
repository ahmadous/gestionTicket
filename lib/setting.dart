import 'package:flutter/material.dart';

import 'FormulaireSetting.dart';

class setting extends StatelessWidget {
  const setting({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.red),
      debugShowCheckedModeBanner: false,
      home: FormulaireSetting(),
    );
  }
}
