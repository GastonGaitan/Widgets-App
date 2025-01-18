import 'package:flutter/material.dart';

const cards = <Map<String, dynamic>>[
  {'elevation': 0.0, 'label': 'Elevation 0'}
];

class CardsScreen extends StatelessWidget {
  static const name = 'CardsScreen';

  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Cards Screen'),
      ),

      body: _CardsView(),
      
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}