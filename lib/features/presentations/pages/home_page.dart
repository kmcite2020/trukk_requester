import 'package:flutter/material.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:trukk_driver/core/extensions.dart';

class HomePage extends ReactiveStatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          'HELLOS'.textify().pad(),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: 'Wellcome'.textify(),
        onPressed: () {
          RM.scaffold.context = context;
          RM.scaffold.showBottomSheet(
            BottomSheet(
              onClosing: () {},
              builder: (_) => const Column(),
            ),
          );
        },
        icon: const Icon(Icons.request_quote),
      ),
    );
  }
}
