import 'package:flutter/material.dart';

class LembretesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lembretes'),
      ),
      body: ListView.builder(
        itemCount: lembretes.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Text(lembretes[index].titulo),
              subtitle: Text(lembretes[index].descricao),
              onTap: () {
                // Implemente a lógica para reproduzir o lembrete em áudio
              },
            ),
          );
        },
      ),
    );
  }
}

class Lembrete {
  final String titulo;
  final String descricao;

  Lembrete({required this.titulo, required this.descricao});
}

List<Lembrete> lembretes = [
  Lembrete(
    titulo: 'Lembrete 1',
    descricao: 'Descrição do lembrete 1.',
  ),
  Lembrete(
    titulo: 'Lembrete 2',
    descricao: 'Descrição do lembrete 2.',
  ),
  Lembrete(
    titulo: 'Lembrete 3',
    descricao: 'Descrição do lembrete 3.',
  ),
  // Adicione mais lembretes conforme necessário
];
