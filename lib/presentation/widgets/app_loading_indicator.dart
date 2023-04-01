import 'package:flutter/material.dart';

class AppLoadingIndicator extends StatelessWidget {
  const AppLoadingIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: const EdgeInsets.fromLTRB(16, 4, 16, 16),
        padding: const EdgeInsets.all(6.0),
        height: 28,
        width: 28,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle
        ),
        child: const CircularProgressIndicator(
          strokeWidth: 4,
          color: Colors.white,
          backgroundColor: Colors.black,
        ),
      ),
    );
  }
}
