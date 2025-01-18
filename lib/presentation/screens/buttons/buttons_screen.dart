import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const name = 'ButtonsScreen';

  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text('Buttons Screen'),
      ),

      body: const _ButtonsView(),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          context.pop();
        }
      ),
      
    );
  }
}

class _ButtonsView extends StatelessWidget {

  const _ButtonsView();

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            
            ElevatedButton(
              onPressed: () {}, 
              child: const Text('Elevated Button')
            ),

            const ElevatedButton(
              onPressed: null, 
              child: Text('Elevated Disabled')
            ),

            ElevatedButton.icon(
              onPressed: (){},
              icon: Icon(Icons.add_alarm_outlined),
              label: const Text('Elevated Iconnnnnn')
            ),

            FilledButton(
              onPressed: (){}, 
              child: const Text('Filled Button')
            ),

            FilledButton.icon(
              label: Text('Filled Button Icon'), 
              icon: Icon(Icons.add_location_alt_sharp), 
              onPressed: (){}
            ),

            OutlinedButton(
              onPressed: (){}, 
              child: const Text('Outlined Button'),
            ),

            OutlinedButton.icon(
              onPressed: () {}, 
              label: Text('Oulined Button Icon'),
              icon: Icon(Icons.add_location_alt_sharp)
            ),

            TextButton(
              onPressed: () {},
              child: const Text('Text Button')
            ),

            TextButton.icon(
              onPressed: () {}, 
              label: Text('Text Button Icon'),
              icon: Icon(Icons.add_location_alt_sharp)
            ),

            IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.car_rental)
            ),

            IconButton(
              onPressed: () {}, 
              icon: Icon(Icons.car_rental),
              iconSize: 40,
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll (colors.primary),
                iconColor: WidgetStatePropertyAll(Colors.white)
              ),
            ),

            CustomButton()
          ],
        )
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});
  
  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;


    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: colors.primary,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: const Text('Hola mundo', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}