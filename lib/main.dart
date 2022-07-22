import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scanner/app/modules/home.dart';
import 'package:scanner/app/modules/map.dart';
import 'package:scanner/app/providers/ui_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UiProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'QR Reader',
        initialRoute: 'home',
        routes: {
          'home': (context) => const HomePage(),
          'map': (context) => const MapPage(),
        },
        theme: ThemeData.dark(),
      ),
    );
  }
}
