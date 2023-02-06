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
  @override
  Widget build(BuildContext context) {
    var controller = StepController();

    return StepBarWidget(
      controller: controller,
      steps: [
        StepModel(
          label: 'Haha',
          panel: Container(),
        ),
        StepModel(
          label: 'Haha',
          panel: Container(),
        ),
        StepModel(
          label: 'Haha',
          panel: Container(),
        ),
        StepModel(
          label: 'Haha',
          panel: Container(),
        ),
        StepModel(
          label: 'Haha',
          panel: Container(),
        ),
      ],
      child: Center(
        child: ElevatedButton(
          child: Text("enenen"),
          onPressed: () {
            controller.listeners[4]?.call(controller.stepController);
          },
        ),
      ),
    );
  }
}
