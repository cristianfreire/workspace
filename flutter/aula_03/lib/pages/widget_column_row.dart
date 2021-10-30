import 'package:aula_03/pages/widget_raisedbutton.dart';
import 'package:flutter/material.dart';

widgetRowColumn() {
  return Column(
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [widgetButton(), widgetButton(), widgetButton()],
  );
}
