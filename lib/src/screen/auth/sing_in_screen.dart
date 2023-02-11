import 'package:flutter/material.dart';

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
      body: Stack(
        children: [
          Positioned(
            child: Container(
              child: _buildInputForm(),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildInputForm() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(),
        SizedBox(height: 8),
        _buildInput(),
      ],
    );
  }

  Widget _buildInput() {
    return TextField();
  }
}
