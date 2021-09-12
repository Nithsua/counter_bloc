import 'package:counter_bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: const HomeView(),
    );
  }
}

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "This is a counter app which increments and decrements using Bloc",
              textAlign: TextAlign.center,
            ),
          ),
          BlocBuilder<CounterBloc, int>(builder: (context, state) {
            return Text(
              '$state',
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.apply(color: Colors.grey),
            );
          }),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton.extended(
              onPressed: () =>
                  BlocProvider.of<CounterBloc>(context, listen: false)
                      .add(CounterEvent.increment),
              label: const Text("Increment"),
              icon: const Icon(Icons.add),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: FloatingActionButton.extended(
              onPressed: () =>
                  BlocProvider.of<CounterBloc>(context, listen: false)
                      .add(CounterEvent.decrement),
              label: const Text("Decrement"),
              icon: const Icon(Icons.remove),
            ),
          ),
        ],
      ),
    );
  }
}
