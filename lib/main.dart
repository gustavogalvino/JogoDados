import 'package:flutter/material.dart';
import 'dart:math';


void main() {
  runApp(MaterialApp(
    title: 'JOGO DE DADOS',
    theme: ThemeData(
        primarySwatch: Colors.deepPurple
    ),
    home: Home(),
    debugShowCheckedModeBanner: false,
)
);
}


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('DICE GAME'),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('imagens/logo.png'),
              ElevatedButton(
                child: Text('Jogar com 1 dado'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SegundaRota()),
                  );
                },
              ),
              ElevatedButton(
                child: Text('Jogar com 2 dados'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TerceiraRota()),
                  );
                },
              ),
              ElevatedButton(
                child: Text('Jogar com 3 dados'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuartaRota()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SegundaRota extends StatefulWidget {
  @override
  _SegundaRotaState createState() => _SegundaRotaState();
}

class _SegundaRotaState extends State<SegundaRota> {

  var _facesDado = ['1', '2', '3', '4', '5', '6'];

  var _faceSorteada = '';

  void _sorteiaFace(){
    var numSorteado = Random().nextInt(_facesDado.length);
    setState(() {
      _faceSorteada = _facesDado[numSorteado];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rolando Um Dado"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("imagens/dado.gif"),
              Text(
                "Jogue o dado",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              Text(
                _faceSorteada,
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              ElevatedButton(
                child: Text('Jogar'),
                onPressed: _sorteiaFace,
              ),
              ElevatedButton(
                child: Text('Voltar'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class TerceiraRota extends StatefulWidget {
  @override
  _TerceiraRotaState createState() => _TerceiraRotaState();
}

class _TerceiraRotaState extends State<TerceiraRota> {

  var _facesDado = ['1', '2', '3', '4', '5', '6'];

  var _faceSorteada = '';
  var _faceSorteada2 = '';

  void _sorteiaFace(){
    var numSorteado = Random().nextInt(_facesDado.length);
    var numSorteado2 = Random().nextInt(_facesDado.length);
    setState(() {
      _faceSorteada = _facesDado[numSorteado];
      _faceSorteada2 = _facesDado[numSorteado2];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rolando Dois Dados"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("imagens/dado2.gif"),
              Text(
                "Jogue os dados",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    _faceSorteada,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                        color: Colors.black
                    ),
                  ),
                  Text(
                    _faceSorteada2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                        color: Colors.black
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                child: Text('Jogar'),
                onPressed: _sorteiaFace,
              ),
              ElevatedButton(
                child: Text('Voltar'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class QuartaRota extends StatefulWidget {
  @override
  _QuartaRotaState createState() => _QuartaRotaState();
}

class _QuartaRotaState extends State<QuartaRota> {

  var _facesDado = ['1', '2', '3', '4', '5', '6'];

  var _faceSorteada = '';
  var _faceSorteada2 = '';
  var _faceSorteada3 = '';

  void _sorteiaFace(){
    var numSorteado = Random().nextInt(_facesDado.length);
    var numSorteado2 = Random().nextInt(_facesDado.length);
    var numSorteado3 = Random().nextInt(_facesDado.length);
    setState(() {
      _faceSorteada = _facesDado[numSorteado];
      _faceSorteada2 = _facesDado[numSorteado2];
      _faceSorteada3 = _facesDado[numSorteado3];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rolando Três Dados"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset("imagens/dado3.gif"),
              Text(
                "Jogue os dados",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 30,
                    fontStyle: FontStyle.italic,
                    color: Colors.black
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    _faceSorteada,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                        color: Colors.black
                    ),
                  ),
                  Text(
                    _faceSorteada2,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                        color: Colors.black
                    ),
                  ),
                  Text(
                    _faceSorteada3,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 30,
                        fontStyle: FontStyle.italic,
                        color: Colors.black
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                child: Text('Jogar'),
                onPressed: _sorteiaFace,
              ),
              ElevatedButton(
                child: Text('Voltar'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}