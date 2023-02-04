import 'package:flutter/material.dart';
import 'package:widget/widget.dart';

void main() {
  runApp(Application(
    initRoute: '1',
    onGenerateRoute: (settings) {
      switch (settings.name) {
        case '1':
          return MaterialPageRoute(
            builder: (context) {
              return Screen1();
            },
          );
        case '2':
          return MaterialPageRoute(
            builder: (context) {
              return Screen2();
            },
          );
        case '3':
          return MaterialPageRoute(
            builder: (context) {
              return Screen3();
            },
          );
        case '4':
          return MaterialPageRoute(
            builder: (context) {
              return Screen4();
            },
          );
        case '5':
          return MaterialPageRoute(
            builder: (context) {
              return Screen5();
            },
          );
      }
    },
  ));
}

class Screen1 extends StatelessWidget {
  const Screen1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Builder(builder: (context) => Text("1"),),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('2');
              },
              child: Text("To"),
            ),
            ElevatedButton(
              onPressed: () {
                AppInherited? a = context.getElementForInheritedWidgetOfExactType<AppInherited>() as AppInherited?;
                print("Chien ${a?.controller.routes}");
              },
              child: Text("Pre"),
            )
          ],
        ),
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("2"),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('3');
              },
              child: Text("To"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Pre"),
            )
          ],
        ),
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("3"),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('4');
              },
              child: Text("To"),
            ),
            ElevatedButton(
              onPressed: () {
                //AppInherited? a = context.de<AppInherited>() as AppInherited?;
                //print("Chien ${a?.controller.routes}");
                },
              child: Text("Pre"),
            )
          ],
        ),
      ),
    );
  }
}

class Screen4 extends StatelessWidget {
  const Screen4({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("4"),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushNamed('5');
              },
              child: Text("To"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Pre"),
            )
          ],
        ),
      ),
    );
  }
}

class Screen5 extends StatelessWidget {
  const Screen5({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("5"),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).popUntil((route) => true);
              },
              child: Text("To"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Pre"),
            )
          ],
        ),
      ),
    );
  }
}
