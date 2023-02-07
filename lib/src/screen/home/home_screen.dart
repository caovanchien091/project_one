import 'package:common/common.dart';
import 'package:flutter/material.dart';
import 'package:widget/widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var controller = StepController(
    panelController: PageController(),
    stepController: ScrollController(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ElevatedButton(
            child: const Text("Delete"),
            onPressed: () {
              Cache.I.delete("key");
            },
          ),
          ElevatedButton(
            child: const Text("read"),
            onPressed: () {
              print('Bool => ${Cache.I.readBool('key')}');
              print('Double => ${Cache.I.readDouble('key')}');
              print('Int => ${Cache.I.readInt('key')}');
              print('String => ${Cache.I.readString('key')}');
            },
          ),
          ElevatedButton(
            child: const Text("read"),
            onPressed: () {
              Cache.I.write('key', true);
            },
          ),
        ],
      ),
    );
  }
}
