import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página 1'),
      ),
      body: const Center(
        child: Text('Página 1'),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.access_alarm),
        onPressed: () {
          context.push('/screen-2');
        }
        ),
    );
  }
}