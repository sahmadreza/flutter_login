import 'package:flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_login/src/models/flushbar_config.dart';

Size getWidgetSize(GlobalKey key) {
  final RenderBox renderBox = key.currentContext?.findRenderObject();
  return renderBox?.size;
}

Flushbar showSuccessToast(BuildContext context, String message, FlushbarConfig flushbarConfig) {
  return Flushbar(
    title: flushbarConfig.globalTitle,
    message: message ?? flushbarConfig.defaultMessage,
    flushbarPosition: flushbarConfig.flushbarPosition,
    flushbarStyle: flushbarConfig.flushbarStyle,
    icon: flushbarConfig.icon,
    duration: flushbarConfig.duration,
    backgroundGradient: flushbarConfig.backgroundGradient ?? LinearGradient(
      colors: [Colors.green[600], Colors.green[400]],
    ),
    onTap: (flushbar) => flushbar.dismiss(),
  )..show(context);
}

Flushbar showErrorToast(BuildContext context, String message, FlushbarConfig flushbarConfig) {
  return Flushbar(
    title: flushbarConfig.globalTitle,
    message: message ?? flushbarConfig.defaultMessage,
    flushbarPosition: flushbarConfig.flushbarPosition,
    flushbarStyle: flushbarConfig.flushbarStyle,
    icon: flushbarConfig.icon,
    duration: flushbarConfig.duration,
    backgroundGradient: flushbarConfig.backgroundGradient ?? LinearGradient(
      colors: [Colors.red[600], Colors.red[400]],
    ),
    onTap: (flushbar) => flushbar.dismiss(),
  )..show(context);
}
