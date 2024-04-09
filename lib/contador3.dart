import 'package:flutter/material.dart';
import 'contador3.dart'; // Importação do arquivo 'contador3.dart'

class contador3 extends StatelessWidget {
  const contador3({super.key}); // Construtor da classe

  @override
  Widget build(BuildContext context) {
    // Retorna o MaterialApp que define a estrutura do aplicativo
    return MaterialApp(
      title: 'Flutter Demo', // Título do aplicativo
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple), // Define o esquema de cores do tema
        useMaterial3: true, // Usa o Material3, uma versão atualizada do Material Design
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'), // Define a tela inicial como MyHomePage
    );
  }
}

// Classe MyHomePage, que é um StatefulWidget
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title}); // Construtor da classe

  final String title; // Título da página inicial

  @override
  State<MyHomePage> createState() => _MyHomePageState(); // Cria uma instância do estado da classe MyHomePage
}

// Estado da classe MyHomePage
class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0; // Variável para contar o número de vezes que o botão foi pressionado

  // Método para incrementar o contador quando o botão é pressionado
  void _incrementCounter() {
    setState(() {
      _counter++; // Incrementa o contador
    });
  }

  // Método para decrementar o contador quando o botão é pressionado
  void _menos() {
    setState(() {
      _counter--; // Decrementa o contador
    });
  }

  @override
  Widget build(BuildContext context) {
    // Retorna a estrutura da tela principal, Scaffold, com AppBar e corpo da tela
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary, // Cor de fundo da barra de aplicativos
        title: Text(widget.title), // Título da barra de aplicativos
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:', // Texto informativo
            ),
            Text(
              '$_counter', // Exibe o valor do contador
              style: Theme.of(context).textTheme.headlineMedium, // Estilo do texto do contador
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: _incrementCounter, // Ação para incrementar o contador
                  child: const Icon(Icons.add), // Ícone de adição
                ),
                ElevatedButton(
                  onPressed: _menos, // Ação para decrementar o contador
                  child: const Icon(Icons.remove), // Ícone de remoção
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}