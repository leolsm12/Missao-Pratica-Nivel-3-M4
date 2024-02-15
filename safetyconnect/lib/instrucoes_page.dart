import 'package:flutter/material.dart';

class InstrucoesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instruções'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Siga as instruções:',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implemente a lógica para reproduzir a instrução em áudio
              },
              child: Text('Iniciar Instrução'),
            ),
          ],
        ),
      ),
    );
  }
}
