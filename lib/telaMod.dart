import 'package:flutter/material.dart';
import 'main.dart';
import 'statewidget.dart';

class Conteinerss extends State<Conteiners> {
  Color selecinarCor = Colors.blue;
  Color contrastando = Colors.black;
  Color manter = Colors.black;
  Color mudar = Color(0xffff0000);
  int tamanho = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Atividade de Container"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Selecione a cor'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Azul'),
              onTap: () {
                escolherCor(Colors.blue);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Preto'),
              onTap: () {
                escolherCor(Colors.black);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Vermelho'),
              onTap: () {
                escolherCor(Colors.red);
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Marrom'),
              onTap: () {
                escolherCor(Colors.brown);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                modeloConteiner("Texto 1"),
                modeloConteiner("Texto 2"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                modeloConteiner("Texto 3"),
                modeloConteiner("Texto 4"),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                modeloConteiner("Texto 5"),
                modeloConteiner("Texto 6"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget modeloConteiner(String text) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          color: selecinarCor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
          border: Border.all(
            color: contrastando,
            width: 2,
          )),
      margin: EdgeInsets.all(5),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  void escolherCor(Color color) {
    setState(() {
      selecinarCor = color;
      if (selecinarCor == Colors.black) {
        contrastando = mudar;
      } else {
        contrastando = manter;
      }
    });
  }
}
