import 'package:flutter/material.dart';

void main() => runApp(MonApplication());

class MonApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // TODO utilisation du widget Scaffold
      home: Scaffold(
          appBar: AppBar(
            title: Text('Bonjour App'),
            backgroundColor: Color(0xffb74093),
          ),
          body: SingleChildScrollView(
              child: Center(
                  child: Column(
            children: [
              Text(
                'Bonjour',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffb74093)),
              ),
              Text(
                'Je suis Kim',
                style: TextStyle(fontSize: 30, color: Color(0xffb74093)),
              ),
              Image.network(
                'https://upload.wikimedia.org/wikipedia/commons/6/6e/Kim_Jong-un_April_2019_%28cropped%29.jpg',
                height: 350,
              ),
              BoutonContactezMoi(),
            ],
          )))),
    );
  }
}

class BoutonContactezMoi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => _showContactDialog(context),
        child: Text('Contactez-moi'),
        style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all<Color>(Color(0xffb74093)),
            textStyle: MaterialStateProperty.all<TextStyle>(
                TextStyle(color: Colors.white))));
  }

  _showContactDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('Contactez-moi'),
            content: Text('Je suis joignable à l\'IMT Atlantique'),
          );
        });
  }
}
