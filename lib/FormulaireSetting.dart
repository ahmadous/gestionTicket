import 'package:flutter/material.dart';

import 'main.dart';

class FormulaireSetting extends StatelessWidget {
  const FormulaireSetting({super.key});
  final String name = "Saliou Beye";
  final String num = "20030101049";
  final String univ = "UIDT";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Setting"),
        centerTitle: true,
        actions: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => MonApplication()));
                  },
                  icon: Icon(Icons.arrow_back)),
            ],
          ),
        ],
      ),
      body: Center(
        child: Expanded(
          child: ListView(
            children: [
              Center(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.change_circle)),
                        Text("Changer mon code secret"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {}, icon: Icon(Icons.exit_to_app)),
                        Text("se deconnecter"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.person)),
                        Text("$name"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.phone)),
                        Text("$num"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.houseboat_rounded)),
                        Text("$univ"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
