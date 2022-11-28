import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String newPhrase = 'Clique para gerar frases';
  List phrases = [
    'Não pare quando estiver cansado. Pare quando terminar.',
    'Dói, mas é tudo o que acontece. A parte mais difícil do treinamento é treinar sua mente. Você constrói calos em seus pés para suportar a estrada. Você constrói calos em sua mente para suportar a dor. Há apenas uma maneira de fazer isso. Você tem que sair lá e correr.',
    'Todo mundo chega a um ponto em sua vida quando quiserem desistir. Mas é o que você faz naquele momento que determina quem você é.',
    'Quando você acha que termina você é apenas 40% para o que seu corpo é capaz de fazer. Isso é apenas os limites que nos colocamos.',
    'Se você puder se ver fazendo alguma coisa, você pode fazer isso. Se você não pode se ver, geralmente não pode conseguir.',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frases motivacionais do Goggins'),
        backgroundColor: Color.fromARGB(255, 23, 68, 126),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset('images/gogginsIcon.png'),
              Text(
                newPhrase,
                style: const TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 55, 56, 59),
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  int index = Random().nextInt(phrases.length);
                  setState(() {
                    newPhrase = phrases[index];
                  });
                }, 
                child: Text('Gerar nova frase'),
              )
            ],
          ),
        ),
      ),
    );
  }
}