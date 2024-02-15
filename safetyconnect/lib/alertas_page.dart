import 'package:flutter/material.dart';

class AlertasPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alertas de Segurança'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Alerta de Segurança!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implemente a lógica para reproduzir o alerta em áudio
              },
              child: Text('Reproduzir Alerta'),
            ),
          ],
        ),
      ),
    );
  }
}
