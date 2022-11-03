import 'package:flutter/material.dart';
import 'package:hello_flutter/ui/page_two.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _buttonPressed(context),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), //
      body: const PageOneBody(),
    );
  }

  void _buttonPressed(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => const PageTwo(pageName: "PageTwo"),
      ),
    );
  }
}

class PageOneBody extends StatelessWidget {
  const PageOneBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      width: 200,
      height: 200,
      color: Colors.red,
      child: const Center(
        child: Text(
          'Hello',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
          ),
        ),
      ),
    );
  }
}
