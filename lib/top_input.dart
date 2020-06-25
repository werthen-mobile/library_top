import 'package:flutter/material.dart';

class TopInputNormal extends StatelessWidget {
  final String label;
  final Color color;
  final TextStyle font;
  final TextInputType keyboardType;
  final TextEditingController controller;
  final Function(String) onChanged;

  const TopInputNormal({
    Key key,
    @required this.label,
    @required this.color,
    @required this.font,
    @required this.keyboardType,
    @required this.controller,
    @required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        alignLabelWithHint: true,
        hintStyle: font,
      ),
      style: font,
      cursorColor: color,
      cursorWidth: 1,
      keyboardType: keyboardType,
      keyboardAppearance: Brightness.dark,
    );
  }
}
