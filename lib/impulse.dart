import 'package:flutter/material.dart';

class Impulse extends StatefulWidget {
  const Impulse({super.key});

  @override
  State<Impulse> createState() => _ImpulseState();
}

class _ImpulseState extends State<Impulse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: const [
        Text('Impulse'),
        Text('Lista de compras...'),
      ],),
    );
  }
}
