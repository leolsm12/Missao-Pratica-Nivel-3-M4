import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:intl/intl.dart'; // Importe o pacote intl para formatar a data

class Lembrete {
  final String titulo;
  final DateTime dataLembrete;

  Lembrete({
    required this.titulo,
    required this.dataLembrete,
  });
}

class LembretesPage extends StatefulWidget {
  @override
  _LembretesPageState createState() => _LembretesPageState();
}

class _LembretesPageState extends State<LembretesPage> {
  late FlutterTts flutterTts;

  @override
  void initState() {
    super.initState();
    flutterTts = FlutterTts();
  }

  final List<Lembrete> lembretes = [
    Lembrete(
      titulo: 'Comprar leite',
      dataLembrete: DateTime(2024, 2, 20, 8, 0),
    ),
    Lembrete(
      titulo: 'Reunião de equipe',
      dataLembrete: DateTime(2024, 2, 22, 14, 30),
    ),
  ];

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
              subtitle: Text(DateFormat('dd/MM/yyyy HH:mm')
                  .format(lembretes[index].dataLembrete)),
              onTap: () {
                speak(lembretes[index].titulo);
                speak(DateFormat('dd/MM/yyyy HH:mm')
                    .format(lembretes[index].dataLembrete));
              },
            ),
          );
        },
      ),
    );
  }

  void speak(String text) async {
    await flutterTts.speak(text);
  }
}

void main() {
  runApp(MaterialApp(
    home: LembretesPage(),
  ));
}
