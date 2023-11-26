import 'package:flutter/material.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text('Página 2'),
      ),
      body: const Center(
        child: Text('Página 2'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.access_alarm),
        onPressed: () {}
        ),
    );
  }
}