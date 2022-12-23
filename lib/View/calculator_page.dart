import 'package:appcalculator/Widgets/display_widget.dart';
import 'package:appcalculator/Widgets/keyboard_widget.dart';
import 'package:appcalculator/models/memory_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();

  void _onPressed(String command) {
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Column(
        children: [
          DisplayWidget(text: memory.getValue),
          KeyboardWidget(callBack: _onPressed),
        ],
      ),
    );
  }
}
