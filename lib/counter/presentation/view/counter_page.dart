import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ika_smansara/common/utils/constants.dart';
import 'package:ika_smansara/counter/counter.dart';
import 'package:ika_smansara/l10n/l10n.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: const CounterView(),
    );
  }
}

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(title: Text(l10n.counterAppBarTitle)),
      body: BlocBuilder<CounterBloc, CounterState>(
        builder: (context, state) {
          if (state is Loading) {
            context.read<CounterBloc>().add(
                  const CounterEvent.fetchData(
                    documentId: Constants.documentId,
                  ),
                );
            return const Center(child: CircularProgressIndicator());
          } else if (state is Success) {
            return Center(
              child: Text(
                state.counterValue.toString(),
                style: theme.textTheme.displayLarge,
              ),
            );
          } else {
            context.read<CounterBloc>().add(const CounterEvent.started());
            return Center(
              child: Text(
                '-',
                style: theme.textTheme.displayLarge,
              ),
            );
          }
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(
                    const CounterEvent.increment(Constants.documentId),
                  );
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            onPressed: () {
              context.read<CounterBloc>().add(
                    const CounterEvent.decrement(Constants.documentId),
                  );
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
