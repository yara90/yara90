import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(Sorteio());

class Sorteio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sorteio',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Numeros(title: 'Giveaway App'),
    );
  }
}

class Numeros extends StatefulWidget {
  final String title;
  Numeros({Key key, this.title}) : super(key: key);

  @override
  _NumerosState createState() => _NumerosState();
}

class _NumerosState extends State<Numeros> {
  int sortear1 = 0;

  void sortear() {
    setState(() {
      Random numeros = Random();
      sortear1 = numeros.nextInt(100);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Olá, bem vindo ao Giveaway App!',
                style: TextStyle(fontSize: 25)),
            Text('O número é:', style: TextStyle(fontSize: 20)),
            Text(
              '$sortear1',
              style: TextStyle(color: Colors.black54, fontSize: 28),
            ),
            Center(
                child: Image.network(
              'http://www.agenciabrasilia.df.gov.br/wp-conteudo/uploads/2017/09/concurso_notas_fiscais_cpf_Agencia_Brasilia.gif',
              width: 300,
              height: 100,
              fit: BoxFit.contain,
            ))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: sortear,
        tooltip: 'Faça o Sorteio',
        child: Icon(Icons.add),
      ),
    );
  }
}
