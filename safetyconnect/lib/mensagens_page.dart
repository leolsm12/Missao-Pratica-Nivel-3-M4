import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart'; // Importe o pacote para síntese de voz

class Mensagem {
  final String remetente;
  final String conteudo;

  Mensagem({required this.remetente, required this.conteudo});
}

List<Mensagem> mensagens = [
  Mensagem(
    remetente: 'João',
    conteudo: 'Olá! Como você está?',
  ),
  Mensagem(
    remetente: 'Maria',
    conteudo: 'Lembre-se da reunião hoje às 14h.',
  ),
  Mensagem(
    remetente: 'Carlos',
    conteudo: 'Segue o relatório solicitado.',
  ),
  // Adicione mais mensagens conforme necessário
];

class MensagensPage extends StatelessWidget {
  final FlutterTts flutterTts = FlutterTts(); // Instância do FlutterTts

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mensagens'),
      ),
      body: ListView.builder(
        itemCount: mensagens.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(
                mensagens[index].remetente,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(mensagens[index].conteudo),
              onTap: () {
                speak("mensagem de:" + mensagens[index].remetente);
                speak(mensagens[index].conteudo); // Lê a mensagem em áudio
              },
            ),
          );
        },
      ),
    );
  }

  void speak(String text) async {
    await flutterTts.speak(text); // Sintetiza e reproduz o texto em voz alta
  }
}

void main() {
  runApp(MaterialApp(
    home: MensagensPage(),
  ));
}
