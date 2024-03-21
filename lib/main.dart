import 'package:flutter/material.dart';
import 'package:rivera_uii_act1_0538/pantallas0538/panel0538/panel_pantalla0538.dart';

void main() => runApp(MiAppGorras());

class MiAppGorras extends StatelessWidget {
  const MiAppGorras({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Rivera Gorras 0538",
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
          useMaterial3: true),
      home: PanelPantalla0538(),
    );
  }
}
