import 'package:flutter/material.dart';

class MensagensPage extends StatelessWidget {
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
                // Implemente a lógica para ler a mensagem em áudio
              },
            ),
          );
        },
      ),
    );
  }
}

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
