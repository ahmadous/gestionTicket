import 'package:flutter/material.dart';

import 'main.dart';

class FormulaireEnvoie extends StatelessWidget {
  const FormulaireEnvoie({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Envoyer de l'argent"),
        centerTitle: true,
        actions: [
          Align(
            alignment: AlignmentDirectional.topStart,
          ),
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 30.0),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Numero de dossier du beneficiaire',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Text("\n......ou.......\n"),
                    ),
                  ],
                ),
                Center(
                  child: ElevatedButton(
                    child: Text("Scanner son code QR"),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
