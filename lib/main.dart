import 'dart:html';

import 'package:flutter/material.dart';
import './poke_detail.dart';

void main() {
  runApp(const MaterialApp(
    home: TopPage(),
  ));
}

class TopPage extends StatelessWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 10000,
          itemBuilder: (context, index) => const PikaButton()),
    );
  }
}

class PikaButton extends StatelessWidget {
  const PikaButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: const Text('detail'),
      onPressed: () => {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (BuildContext context) => const PokeDetail(),
          ),
        ),
      },
    );
  }
}
