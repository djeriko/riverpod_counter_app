import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_counter_app/providers/counter_provider.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<int> counter = ref.watch(counterProvider(5));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter'),
      ),
      body: Center(
        child: Text(
          counter
              .when(
                data: (int value) => value,
                error: (Object e, _) => e,
                loading: () => 'Loading ...',
              )
              .toString(),
          style: Theme.of(context).textTheme.displayMedium,
        ),
      ),
    );
  }
}
