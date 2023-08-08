import 'package:flutter/material.dart';
import 'package:flutter_application_3/setting.dart';

import 'envoie.dart';

class Formulaire extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Changer de Code PIN"),
        centerTitle: true,
        actions: [
          Column(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Envoie()));
                  },
                  icon: Icon(Icons.send_to_mobile)),
            ],
          ),
          Column(
            children: [
              IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => setting()));
                  },
                  icon: Icon(Icons.settings)),
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
                  labelText: 'Ancien Code pin',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              const SizedBox(height: 10.0),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: 'nouveau Code pin',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 10.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Confirmez Code pin',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
              ),
              SizedBox(height: 10.0),
              OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Changer Code PIN",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 12,
                    ),
                  )),
              SizedBox(
                height: 10.0,
              ),
              ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    "Retour Au Menu",
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 12,
                    ),
                  )),
            ],
          )),
        ),
      ),
    );
  }

  List<Widget> get _form {
    return <Widget>[
      TextFormField(
        decoration: const InputDecoration(
          labelText: 'Ancien Code PIN',
          border: OutlineInputBorder(),
        ),
      ),
      const SizedBox(height: 10.0),
      TextFormField(
        decoration: const InputDecoration(
          labelText: 'Nouveau Code PIN',
          border: OutlineInputBorder(),
        ),
        obscureText: true,
      ),
      SizedBox(height: 10.0),
      TextFormField(
        decoration: InputDecoration(
          labelText: 'Confirmez Code PIN',
          border: OutlineInputBorder(),
        ),
        obscureText: true,
      ),
      SizedBox(height: 10.0),
      OutlinedButton(
          onPressed: () {},
          child: Text(
            "Changer Code PIN",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 12,
            ),
          )),
      SizedBox(
        height: 10.0,
      ),
      ElevatedButton(
          onPressed: () {},
          child: Text(
            "retour",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 12,
              fontWeight: FontWeight.bold,
              decorationColor: Colors.red,
            ),
          )),
    ];
  }
}
