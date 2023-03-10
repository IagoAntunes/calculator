import 'package:appcalculator/Widgets/button_widget.dart';
import 'package:flutter/material.dart';

class ButtonRowWidget extends StatelessWidget {
  const ButtonRowWidget({super.key, required this.buttons});

  final List<ButtonWidget> buttons;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: buttons.fold(
          [],
          (list, element) {
            list.isEmpty
                ? list.add(element)
                : list.addAll(
                    [const SizedBox(width: 1), element],
                  );
            return list;
          },
        ),
      ),
    );
  }
}
