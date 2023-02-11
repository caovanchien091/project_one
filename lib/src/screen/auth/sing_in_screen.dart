import 'package:flutter/material.dart';
import 'package:theme/theme.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          margin: EdgeInsets.only(
            left: context.widthScreen * 0.1,
            right: context.widthScreen * 0.1,
          ),
          child: Padding(
            padding: EdgeInsets.all(
              context.spacing,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: context.red,
                ),
                TextField(),
                SizedBox(
                  width: context.spacingS,
                  height: context.spacingS,
                ),
                TextField(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
