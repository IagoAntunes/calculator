import 'package:flutter/material.dart';
import 'button_widget.dart';
import 'buttonRow_widget.dart';

class KeyboardWidget extends StatelessWidget {
  const KeyboardWidget({super.key, required this.callBack});

  final void Function(String) callBack;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: Column(
        children: [
          ButtonRowWidget(
            buttons: [
              ButtonWidget.big(
                text: "AC",
                cb: callBack,
                color: ButtonWidget.DARK,
              ),
              ButtonWidget(
                text: "%",
                cb: callBack,
                color: ButtonWidget.DARK,
              ),
              ButtonWidget.operation(
                text: "/",
                cb: callBack,
              ),
            ],
          ),
          const SizedBox(height: 1),
          ButtonRowWidget(
            buttons: [
              ButtonWidget(
                text: "7",
                cb: callBack,
              ),
              ButtonWidget(
                text: "8",
                cb: callBack,
              ),
              ButtonWidget(
                text: "9",
                cb: callBack,
              ),
              ButtonWidget.operation(
                text: "X",
                cb: callBack,
              ),
            ],
          ),
          const SizedBox(height: 1),
          ButtonRowWidget(
            buttons: [
              ButtonWidget(
                text: "4",
                cb: callBack,
              ),
              ButtonWidget(
                text: "5",
                cb: callBack,
              ),
              ButtonWidget(
                text: "6",
                cb: callBack,
              ),
              ButtonWidget.operation(
                text: "-",
                cb: callBack,
              ),
            ],
          ),
          const SizedBox(height: 1),
          ButtonRowWidget(
            buttons: [
              ButtonWidget(
                text: "1",
                cb: callBack,
              ),
              ButtonWidget(
                text: "2",
                cb: callBack,
              ),
              ButtonWidget(
                text: "3",
                cb: callBack,
              ),
              ButtonWidget.operation(
                text: "+",
                cb: callBack,
              ),
            ],
          ),
          const SizedBox(height: 1),
          ButtonRowWidget(
            buttons: [
              ButtonWidget.big(
                text: "0",
                cb: callBack,
              ),
              ButtonWidget(
                text: ".",
                cb: callBack,
              ),
              ButtonWidget.operation(
                text: "=",
                cb: callBack,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
