import 'package:flutter/material.dart';
import 'button_widget.dart';
import 'buttonRow_widget.dart';

class KeyboardWidget extends StatelessWidget {
  const KeyboardWidget({super.key, required this.callBack});

  final void Function(String) callBack;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: Column(
        children: [
          ButtonRowWidget(
            buttons: [
              ButtonWidget.big(
                text: "AC",
                cb: this.callBack,
                color: ButtonWidget.DARK,
              ),
              ButtonWidget(
                text: "%",
                cb: this.callBack,
                color: ButtonWidget.DARK,
              ),
              ButtonWidget.operation(
                text: "/",
                cb: this.callBack,
              ),
            ],
          ),
          SizedBox(height: 1),
          ButtonRowWidget(
            buttons: [
              ButtonWidget(
                text: "7",
                cb: this.callBack,
              ),
              ButtonWidget(
                text: "8",
                cb: this.callBack,
              ),
              ButtonWidget(
                text: "9",
                cb: this.callBack,
              ),
              ButtonWidget.operation(
                text: "X",
                cb: this.callBack,
              ),
            ],
          ),
          SizedBox(height: 1),
          ButtonRowWidget(
            buttons: [
              ButtonWidget(
                text: "4",
                cb: this.callBack,
              ),
              ButtonWidget(
                text: "5",
                cb: this.callBack,
              ),
              ButtonWidget(
                text: "6",
                cb: this.callBack,
              ),
              ButtonWidget.operation(
                text: "-",
                cb: this.callBack,
              ),
            ],
          ),
          SizedBox(height: 1),
          ButtonRowWidget(
            buttons: [
              ButtonWidget(
                text: "1",
                cb: this.callBack,
              ),
              ButtonWidget(
                text: "2",
                cb: this.callBack,
              ),
              ButtonWidget(
                text: "3",
                cb: this.callBack,
              ),
              ButtonWidget.operation(
                text: "+",
                cb: this.callBack,
              ),
            ],
          ),
          SizedBox(height: 1),
          ButtonRowWidget(
            buttons: [
              ButtonWidget.big(
                text: "0",
                cb: this.callBack,
              ),
              ButtonWidget(
                text: ".",
                cb: this.callBack,
              ),
              ButtonWidget.operation(
                text: "=",
                cb: this.callBack,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
