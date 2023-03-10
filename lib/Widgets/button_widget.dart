import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.text,
    this.color = DEFAULT,
    this.big = false,
    required this.cb,
  });
  const ButtonWidget.big({
    super.key,
    required this.text,
    required this.cb,
    this.color = DEFAULT,
    this.big = true,
  });
  const ButtonWidget.operation({
    super.key,
    required this.text,
    required this.cb,
    this.color = OPERATION,
    this.big = false,
  });

  // ignore: constant_identifier_names
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  // ignore: constant_identifier_names
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  // ignore: constant_identifier_names
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  final String text;
  final bool big;
  final Color color;
  final void Function(String) cb;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: big ? 2 : 1,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: color),
        onPressed: () => cb(text),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 32,
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
    );
  }
}
