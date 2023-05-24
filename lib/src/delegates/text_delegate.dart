import 'package:flutter/material.dart';

abstract class TextDelegate {
  String noneZoom(BuildContext context);
  String line(BuildContext context);
  String rectangle(BuildContext context);
  String drawing(BuildContext context);
  String circle(BuildContext context);
  String arrow(BuildContext context);
  String dashLine(BuildContext context);
  String text(BuildContext context);
  String changeMode(BuildContext context);
  String changeColor(BuildContext context);
  String changeBrushSize(BuildContext context);
  String undo(BuildContext context);
  String done(BuildContext context);
  String clearAllProgress(BuildContext context);
}

class TextDelegateEn implements TextDelegate {
  @override
  String noneZoom(BuildContext context) => 'None Zoom';
  @override
  String line(BuildContext context) => 'Line';
  @override
  String rectangle(BuildContext context) => 'Rectangle';
  @override
  String drawing(BuildContext context) => 'Drawing';
  @override
  String circle(BuildContext context) => 'Circle';
  @override
  String arrow(BuildContext context) => 'Arrow';
  @override
  String dashLine(BuildContext context) => 'Dash Line';
  @override
  String text(BuildContext context) => 'Text';
  @override
  String changeMode(BuildContext context) => 'Change Mode';
  @override
  String changeColor(BuildContext context) => 'Change Color';
  @override
  String changeBrushSize(BuildContext context) => 'Change Brush Size';
  @override
  String undo(BuildContext context) => 'Undo';
  @override
  String done(BuildContext context) => 'Done';
  @override
  String clearAllProgress(BuildContext context) => 'Clear All Progress';
}
