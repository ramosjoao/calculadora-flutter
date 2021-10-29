import 'package:flutter/material.dart';

//TODO - 1: Adicione uma tela em branco (Scaffold) e defina a cor de fundo para 'balck12, ou seja criativo e escolha sua própria cor'

//TODO - 2: Crie uma appBar para o aplicativo, como título: 'Calculadora', cor de fundo: 'black, ou seja criativo e escolha sua própria cor'

//TODO - 3: Crie um corpo para o app Utilizando o Widget Column. Dentro dessa coluna inclua um container que temporariamente servirá como nosso display. Altere a propriedade color desse container para: 'white', dê um espaçamento nas margens de: '15'. O width deve ser: '400' e o height: '120'. Exiba o texto 'visor' no centro do container, o tamanho da fonte deve ser: '50'.

//TODO - 4: Crie um novo Container, que receberá um column, que por sua vez receberá vários rows, que por sua vez receberão vários raisedbuttons para criar os botões da nossa calculadora. A calculadora deve ficar com o visual similar ao da imagem apresentada em: https://drive.google.com/file/d/1fuKl3cdlr1J-PsLLmKtStvgeHiaeahO6/view?usp=sharing. Dicas: pesquisem no flutter.dev pelas classes/widgets: 'Expanded' e 'RaisedButton'; As cores podem ser diferentes para os botões, fica a seu critério, porém, a estrutura dos botões deve ser a mesma apresentada na imagem.

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[700],
        appBar: AppBar(
          title: Text('Calculadora'),
          backgroundColor: Colors.grey[900],
        ),
        body: SafeArea(
            child: Column(
          children: <Widget>[
            Container(
                margin: EdgeInsets.all(15.0),
                color: Colors.white,
                height: 120.0,
                width: 400.0,
                child: Center(
                  child: Text(
                    'Visor',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 50.0),
                  ),
                )),
            Container(
              child: Column(
                children: <Widget>[
                  Row(
                    children: [
                      ElevatedButton(
                          onPressed: onPressed(),
                          child: Text(
                            'C',
                            style: TextStyle(color: Colors.blue),
                          ))
                    ],
                  )
                ],
              ),
            )
          ],
        )),
      ),
    );
  }
}
