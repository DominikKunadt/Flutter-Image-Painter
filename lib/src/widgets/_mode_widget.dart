import 'package:flutter/material.dart';

import '../../image_painter.dart';

class SelectionItems extends StatelessWidget {
  final bool? isSelected;
  final ModeData? data;
  final VoidCallback? onTap;

  const SelectionItems({Key? key, this.isSelected, this.data, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 2.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          color: isSelected! ? Colors.blue : Colors.transparent),
      child: ListTile(
        leading: IconTheme(
          data: const IconThemeData(opacity: 1.0),
          child: Icon(data!.icon,
              color: isSelected! ? Colors.white : Colors.black),
        ),
        title: Text(
          data!.label!,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
              color: isSelected!
                  ? Colors.white
                  : Theme.of(context).textTheme.bodyLarge!.color),
        ),
        onTap: onTap,
        contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
        selected: isSelected!,
      ),
    );
  }
}

List<ModeData> paintModes(TextDelegate textDelegate, BuildContext context) => [
      ModeData(
          icon: Icons.zoom_out_map,
          mode: PaintMode.none,
          label: textDelegate.noneZoom(context)),
      ModeData(
          icon: Icons.horizontal_rule,
          mode: PaintMode.line,
          label: textDelegate.line(context)),
      ModeData(
          icon: Icons.crop_free,
          mode: PaintMode.rect,
          label: textDelegate.rectangle(context)),
      ModeData(
          icon: Icons.edit,
          mode: PaintMode.freeStyle,
          label: textDelegate.drawing(context)),
      ModeData(
          icon: Icons.lens_outlined,
          mode: PaintMode.circle,
          label: textDelegate.circle(context)),
      ModeData(
          icon: Icons.arrow_right_alt_outlined,
          mode: PaintMode.arrow,
          label: textDelegate.arrow(context)),
      ModeData(
          icon: Icons.power_input,
          mode: PaintMode.dashLine,
          label: textDelegate.dashLine(context)),
      ModeData(
          icon: Icons.text_format,
          mode: PaintMode.text,
          label: textDelegate.text(context)),
    ];

@immutable
class ModeData {
  final IconData? icon;
  final PaintMode? mode;
  final String? label;
  const ModeData({
    this.icon,
    this.mode,
    this.label,
  });
}
