import 'package:flutter/material.dart';
import 'package:widget/src/app/controller/app_controller.dart';
import 'package:widget/src/app/inherit/app_inherit.dart';

class Application extends StatefulWidget {
  const Application({
    Key? key,
  }) : super(key: key);

  @override
  State createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {
  final AppController controller = AppController();

  @override
  void initState() {
    super.initState();

    controller.notify = () {
      setState(() {});
    };
  }

  @override
  Widget build(BuildContext context) {
    return AppInherited(
      controller: controller,
      child: MaterialApp(
        home: Container(),
      ),
    );
  }
}
