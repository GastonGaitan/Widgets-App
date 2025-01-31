import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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

class AppTutorialScreen extends StatefulWidget {
  static const name = 'app_tutorial';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {

  final PageController pageViewController = PageController();

  @override
  void initState() {
    super.initState();
    pageViewController.addListener(() {
      print('${pageViewController.page}');
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Tutorial de la App'),
      ),
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
            physics: const BouncingScrollPhysics(),
            children: slides
                .map((slideData) => _Slide(
                      slideData.title,
                      slideData.caption,
                      slideData.imageUrl,
                    ))
                .toList(),
          ),
          Positioned(
              right: 20,
              top: 50,
              child: TextButton(
                  onPressed: () {
                    context.pop();
                  },
                  child: Text('Salir'))
          )
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide(this.title, this.caption, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodyMedium;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage(imageUrl),
              height: 300,
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: titleStyle,
            ),
            const SizedBox(height: 8),
            Text(
              caption,
              style: captionStyle,
            ),
          ],
        ),
      ),
    );
  }
}
