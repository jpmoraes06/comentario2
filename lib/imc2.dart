import 'package:flutter/material.dart';
import 'imc2.dart'; // Importação do arquivo 'imc2.dart'

class imc2 extends StatelessWidget {
  const imc2({super.key}); // Construtor da classe

  @override
  Widget build(BuildContext context) {
    // Retorna o MaterialApp que define a estrutura do aplicativo
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove a faixa de debug no canto superior direito
      home: const Home(), // Define a tela inicial como a classe Home
    );
  }
}

// Classe Home, que é um StatefulWidget
class Home extends StatefulWidget {
  const Home({super.key}); // Construtor da classe

  @override
  State<Home> createState() => _HomePageState(); // Cria uma instância do estado da classe Home
}

// Estado da classe Home
class _HomePageState extends State<Home> {
  // Controladores para os campos de texto
  TextEditingController usuarioController = new TextEditingController();
  TextEditingController senhaController = new TextEditingController();
  String _textoInfo = "Informe seus dados"; // Mensagem de informações para o usuário

  // Método para cadastrar os dados inseridos
  void _cadastrar() {
    setState(() {
      String user = usuarioController.text;
      String senha = senhaController.text;
      if (user.isEmpty || senha.isEmpty) {
        _textoInfo = "Erro ao cadastrar usuario"; // Se algum campo estiver vazio, exibe mensagem de erro
      } else {
        _textoInfo = "Cadastrado com sucesso"; // Caso contrário, exibe mensagem de sucesso
      }
    });
  }

  // Método para limpar os campos de texto e redefinir a mensagem informativa
  void _limpar_Tela() {
    usuarioController.text = "";
    senhaController.text = "";
    setState(() {
      _textoInfo = "Informe seus dados"; // Redefine a mensagem informativa
    });
  }

  @override
  Widget build(BuildContext context) {
    // Retorna a estrutura da tela principal, Scaffold, com AppBar e corpo da tela
    return Scaffold(
      appBar: AppBar(
        title: Text("Cadastro Usuario"), // Título da barra de aplicativos
        centerTitle: true,
        backgroundColor: Colors.purple, // Cor de fundo da barra de aplicativos
        actions: <Widget>[
          IconButton(
              onPressed: _limpar_Tela, // Ação para limpar os campos
              icon: Icon(Icons.refresh)) // Ícone de atualização
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10), // Preenchimento do conteúdo da tela
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(
              Icons.person_outline,
              size: 129.0,
              color: Colors.purple,
            ), // Ícone de pessoa
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "usuario", // Rótulo para o campo de usuário
                  labelStyle: TextStyle(color: Colors.blue)),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: usuarioController,
            ), // Campo de texto para inserir o nome do usuário
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  labelText: "senha", // Rótulo para o campo de senha
                  labelStyle: TextStyle(color: Colors.blue)),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              obscureText: true,
              controller: senhaController,
            ), // Campo de texto para inserir a senha (oculto)
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                height: 50.0,
                child: ElevatedButton(
                    onPressed: _cadastrar, // Ação para cadastrar os dados
                    child: const Text("cadastrar")), // Botão de cadastro
              ),
            ),
            Text(
              _textoInfo, // Exibe a mensagem informativa
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue, fontSize: 25.0),
            ) // Mensagem informativa
          ],
        ),
      ),
    );
  }
}