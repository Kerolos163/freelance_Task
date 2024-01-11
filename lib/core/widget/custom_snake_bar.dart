import 'package:flutter/material.dart';

void customSnakeBar(BuildContext context,
    {required String label, int? duration, required Color backgroundColor}) {
  var snackBar = SnackBar(
    content: Text(label),
    duration: Duration(seconds: duration ?? 3),
    backgroundColor: backgroundColor,
  );

  ScaffoldMessenger.of(context).showSnackBar(
    snackBar,
  );
}
