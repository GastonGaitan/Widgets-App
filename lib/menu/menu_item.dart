import 'package:flutter/material.dart' show IconData, Icons;

class MenuItem {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });

}

const appMenuItems = <MenuItem>[
  MenuItem(
    title: 'Botones',
    subTitle: 'Varios botones en FLutter',
    link: '/buttons',
    icon: Icons.smart_button
  ),

  MenuItem(
    title: 'Tarjetas',
    subTitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card
  ),

  MenuItem(
    title: 'ProgressIndicators',
    subTitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded
  ),

  MenuItem(
    title: 'SnackBar',
    subTitle: 'Mensajes en la parte inferior',
    link: '/snackbars',
    icon: Icons.info_outline
  ),

  MenuItem(
    title: 'Animated Container',
    subTitle: 'Stateful widget animado',
    link: '/animated',
    icon: Icons.check_box_outline_blank_rounded
  ),

  MenuItem(
    title: 'UI Controls + Tiles',
    subTitle: 'Una serie de controles de flutter',
    link: '/ui-controls',
    icon: Icons.car_rental_outlined
  ),

  MenuItem(
    title: 'Introduccion a la aplicacion',
    subTitle: 'Pequeno tutorial de la aplicacion',
    link: '/tutorial',
    icon: Icons.accessibility_rounded
  ),

   MenuItem(
    title: 'Riverpod Counter',
    subTitle: 'Introduccion a riverpod',
    link: '/counter_screen',
    icon: Icons.add_circle_outline
  ),

  MenuItem(
    title: 'Cambiar tema',
    subTitle: 'Cambiar tema de la aplicacion',
    link: '/theme-changer',
    icon: Icons.color_lens_outlined
  ),
  
];