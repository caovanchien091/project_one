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
    return StepBarWidget(
      controller: controller,
      appBar: AppBar(
        title: Text('Chienn a a a a '),
      ),
      icon: const Icon(
        Icons.check,
        color: Colors.white,
      ),
      iconPadding: 4,
      steps: [
        StepModel(
          label: 'Haha',
          panel: Container(
            child: ElevatedButton(
              child: Text("enenen"),
              onPressed: () {
                controller.goToNextPage();
              },
            ),
          ),
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
    );
  }
}
