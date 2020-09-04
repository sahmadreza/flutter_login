import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';

class FlushbarConfig {
  final String globalTitle;
  final String defaultMessage;
  final FlushbarPosition flushbarPosition;
  final FlushbarStyle flushbarStyle;
  final Duration duration;
  final Gradient backgroundGradient;
  final Icon icon;

  FlushbarConfig({
    this.globalTitle = 'Success',
    this.flushbarPosition = FlushbarPosition.TOP,
    this.flushbarStyle = FlushbarStyle.FLOATING,
    this.duration = const Duration(seconds: 4),
    this.defaultMessage = "Worked!",
    this.icon = const Icon(
      Icons.check,
      size: 28.0,
      color: Colors.white,
    ),
    this.backgroundGradient,
  });
  FlushbarConfig errorDefault() {
    return FlushbarConfig(
        globalTitle: 'Error',
        defaultMessage: 'Oops',
        icon: const Icon(
          Icons.error,
          size: 28.0,
          color: Colors.white,
        ),
        backgroundGradient: LinearGradient(
          colors: [Colors.red[600], Colors.red[400]],
        ));
  }

  FlushbarConfig successDefault() {
    return FlushbarConfig(
        backgroundGradient: LinearGradient(
      colors: [Colors.green[600], Colors.green[400]],
    ));
  }
}

