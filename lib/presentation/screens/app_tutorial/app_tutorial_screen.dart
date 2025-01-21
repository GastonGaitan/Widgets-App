import 'package:flutter/material.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  SlideInfo(this.title, this.caption, this.imageUrl);
}

final slides = <SlideInfo>[
  SlideInfo('Busca la comida', 'asdasdas', 'assets/images/1.png'),
  SlideInfo('Entrega rápida', 'captasdasdaion', 'assets/images/2.png'),
  SlideInfo('Disfruta la comida', 'asdasdasd', 'assets/images/3.png'),
];

class AppTutorialScreen extends StatelessWidget {
  static const name = 'app_tutorial';

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Tutorial de la App'),
        ),
        body: PageView(
          physics: const BouncingScrollPhysics(),
          children: slides
              .map((slideData) => _Slide(
                  slideData.title, slideData.caption, slideData.imageUrl))
              .toList(),
        ));
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide(this.title, this.caption, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
