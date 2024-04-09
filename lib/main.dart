import 'package:flutter/material.dart';
import 'principal1.dart';
import 'imc2.dart';
import 'contador3.dart';
import 'cadastrousuario4.dart';
import 'cadastroproduto5.dart'; // Importação do arquivo 'cadastroproduto5.dart'

void main() {
  runApp(const MyApp()); // Inicializa o aplicativo
}

// Classe MyApp, que é um StatelessWidget
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Construtor da classe

  @override
  Widget build(BuildContext context) {
    // Retorna o MaterialApp que define a estrutura do aplicativo
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove a faixa de debug no canto superior direito
      title: 'Rotas nomeadas', // Título do aplicativo
      initialRoute: '/', // Define a rota inicial
      routes: {
        '/': (context) => Principal1(), // Define a rota para a tela Principal1
        '/imc': (context) => const imc2(), // Define a rota para a tela do IMC
        '/contador': (context) => const contador3(), // Define a rota para a tela do contador
        '/cadastrousuario': (context) => const cadastrousuario4(), // Define a rota para a tela de cadastro de usuário
        '/cadastroproduto': (context) => const cadastroproduto5(), // Define a rota para a tela de cadastro de produtos
      },
    );
  }
}