import 'package:flutter/material.dart';

class Warning extends StatelessWidget {
  String? texts;
  final VoidCallback callback;

  Warning({
    required this.texts,
    required this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(),
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Icon(Icons.warning),
            SizedBox(
              height: 10,
            ),
            Text(texts!),
            SizedBox(
              height: 20,
            ),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
