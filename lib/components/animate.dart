import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';

// Animation widget
Widget animation( int index, int delay, Widget child) {
  if(index == 1) {
    return FadeInDown(
      delay: Duration(milliseconds: delay),
      child: child,
    );
  } else {
    return FadeInUp(
      delay: Duration(milliseconds: delay),
      child: child,
    );
  }
}