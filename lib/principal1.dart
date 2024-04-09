import 'principal1.dart';
import 'imc2.dart';
import 'contador3.dart';
import 'cadastroproduto5.dart';
import 'cadastrousuario4.dart';
import 'package:flutter/material.dart';

// Classe Principal1, que é um StatelessWidget
class Principal1 extends StatelessWidget {
  const Principal1({super.key}); // Construtor da classe

  @override
  Widget build(BuildContext context) {
    // Retorna a estrutura da tela principal, Scaffold, com AppBar e corpo da tela
    return Scaffold(
      appBar: AppBar(
        title: Text("MENU"), // Título da barra de aplicativos
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent, // Cor de fundo da barra de aplicativos
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10), // Preenchimento do conteúdo da tela
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(
              Icons.add_business_sharp,
              size: 120.0,
              color: Colors.greenAccent,
            ), // Ícone principal
            Text(
              "Aplicação Principal", // Texto informativo
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),
            Text(
              "", // Texto vazio para espaçamento
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blueGrey, fontSize: 25.0),
            ),
            // Lista de botões para diferentes funcionalidades da aplicação
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                ElevatedButton(
                    child: const Text("IMC"), // Botão para ir para a tela do IMC
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const imc2()),
                      );
                    }),
                ElevatedButton(
                    child: const Text("Contador"), // Botão para ir para a tela do contador
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const contador3()),
                      );
                    }),
                ElevatedButton(
                    child: const Text("Cadastro Usuario"), // Botão para ir para a tela de cadastro de usuário
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const cadastrousuario4()),
                      );
                    }),
                ElevatedButton(
                    child: const Text("Cadastro de produtos"), // Botão para ir para a tela de cadastro de produtos
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const cadastroproduto5()),
                      );
                    }),
              ],
            ),
          ],
        ),
      ), // Botão para executar o cálculo do IMC,
    );
  }
}