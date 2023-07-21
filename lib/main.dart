import 'package:flutter/material.dart';
import 'package:restaurant_delivery/router.dart';
import 'theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      darkTheme: ThemeData.dark(
        useMaterial3: true,
      ),
      // themeMode: ThemeMode.dark,
      theme: lightTheme,
      routerConfig: router,
    );
  }
}

extension IterableIndexed<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(E element, int index) f) sync* {
    int index = 0;
    for (final elemen in this) {
      yield f(elemen, index);
      index++;
    }
  }
}
