//    ///
//  Import LIBRARIES
import 'package:flutter/material.dart';
import 'package:signals_flutter/signals_flutter.dart';
//  Import FILES
//  SIGNALS

//  //   ///

class HomePage extends StatelessWidget {
  final counter = signal(0);
  late final doubleCounter = computed(() => counter() * 2);

  HomePage({super.key});

  // void _incrementCounter() {
  //   counter.value++;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'El número de veces que has pulsado el botón es:',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              '${counter.watch(context)}',
              style: const TextStyle(fontSize: 24.0),
            ),
            const SizedBox(height: 10.0),
            Text(
              'Doblado será',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Text(
              '${doubleCounter.watch(context)}',
              style: const TextStyle(fontSize: 24.0),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // onPressed: () {counter.set(counter.watch(context) + 1);},
        // onPressed: _incrementCounter,
        onPressed: () {
          counter.value++;
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
