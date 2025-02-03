import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counter_provider.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

void main() => runApp(const CounterScreen());

class CounterScreen extends ConsumerWidget {

  static const name = 'CounterScreen';

  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    int clickCounter = ref.watch(counterProvider);

    bool isDarkMode = ref.watch(isDarkModeProvider);

    return Scaffold(

        appBar: AppBar(
          title: Text('Material App Bar'),
          actions: [
            IconButton(
             icon: Icon(isDarkMode ? Icons.light_mode_outlined : Icons.dark_mode_outlined),
             onPressed: (){
                ref.read(isDarkModeProvider.notifier)
                  .update((state) => !state);
             },
             ),
          ],
        ),

        body: Center(
          child: Text('Contador: $clickCounter'),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ref.read(counterProvider.notifier)
              .update((state) => state + 1);
          },
          child: const Icon(Icons.add),
        ),
         
      );
  }
}