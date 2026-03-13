import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _avaliacao = 'Regular';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Olá Flutter')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Avaliação de Serviço",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),

              // Opção 1: Ruim
              RadioListTile<String>(
                title: const Text("Ruim"),
                secondary: const Icon(
                  Icons.sentiment_dissatisfied,
                  color: Colors.red,
                ),
                value: 'Ruim',
                groupValue: _avaliacao,
                onChanged: (String? value) {
                  setState(() => _avaliacao = value!);
                },
              ),

              // Opção 2: Regular
              RadioListTile<String>(
                title: const Text("Regular"),
                secondary: const Icon(
                  Icons.sentiment_neutral,
                  color: Colors.orange,
                ),
                value: 'Regular',
                groupValue: _avaliacao,
                onChanged: (String? value) {
                  setState(() => _avaliacao = value!);
                },
              ),

              // Opção 3: Ótimo
              RadioListTile<String>(
                title: const Text("Ótimo"),
                secondary: const Icon(
                  Icons.sentiment_satisfied,
                  color: Colors.green,
                ),
                value: 'Ótimo',
                groupValue: _avaliacao,
                onChanged: (String? value) {
                  setState(() => _avaliacao = value!);
                },
              ),

              const SizedBox(height: 20),
              Text(
                "Sua avaliação: $_avaliacao",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
