import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SnackBarScreen extends StatelessWidget {
  static const name = 'snackbar_screen';

  const SnackBarScreen({super.key});

  void showCustomSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).clearSnackBars();
    final snackBar = SnackBar(
      content: Text('Hola, soy un SnackBar'),
      duration: const Duration(seconds: 2),
      action: SnackBarAction(
        label: 'Okis',
        onPressed: () {},
      )
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void openDialog(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Terminos y condiciones'),
        content: const Text('lorem ipsum dolor sit amet'),
        actions: [
          TextButton(
            onPressed: () => context.pop(),
            child: const Text('Cancel'),
          ),

          FilledButton(
            onPressed: () => context.pop(),
            child: const Text('Accept'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar Screen'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(context: context);
              }, child: const Text('Licencias usadas')
            ),

            SizedBox(height: 20),

            FilledButton.tonal(
              onPressed: () => openDialog(context), 
              child: const Text('Mostrar dialogo en pantalla')
            )

          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: Text('Mostrar Snackbar'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () {
          showCustomSnackBar(context);
        }
      ) ,
    );
  }
}