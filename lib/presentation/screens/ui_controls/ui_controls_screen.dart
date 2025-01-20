import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  static const name = 'ui_controls_screen';

  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('UI Controls'),
        ),
        body: _UiControlsView());
  }
}

class _UiControlsView extends StatefulWidget {
  const _UiControlsView();

  @override
  State<_UiControlsView> createState() => _UiControlsViewState();
}

enum Transportation { car, plane, boat, submarine }

class _UiControlsViewState extends State<_UiControlsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const ClampingScrollPhysics(),
      children: [

        SwitchListTile(
          value: isDeveloper,
          onChanged: (value) {
            setState(() {
              isDeveloper = !isDeveloper;
            });
          },
          title: const Text('Developer Mode'),
          subtitle: const Text('Controles adicionales'),
        ),

        RadioListTile(
          value: Transportation.car,
          groupValue: selectedTransportation,
          onChanged: (value) {
            setState(() {
              selectedTransportation = Transportation.car;
            });
          }
        ),

        RadioListTile(
          value: Transportation.boat,
          groupValue: selectedTransportation,
          onChanged: (value) {
            setState(() {
              selectedTransportation = Transportation.boat;
            });
          }
        ),

        RadioListTile(
          value: Transportation.plane,
          groupValue: selectedTransportation,
          onChanged: (value) {
            setState(() {
              selectedTransportation = Transportation.plane;
            });
          }
        ),

        RadioListTile(
          value: Transportation.submarine,
          groupValue: selectedTransportation,
          onChanged: (value) {
            setState(() {
              selectedTransportation = Transportation.submarine;
            });
          }
        ),



      ],
    );
  }
}
