import 'package:flutter/material.dart';
import 'package:fml_inherited_widget/pages/fmp_episodes_page.dart';

import 'di/di.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return DI(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const FMPEpisodesPage(),
      ),
    );
  }
}
