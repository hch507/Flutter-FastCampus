import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Body(),
    ),
  ));
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [TestCheckBox(), TestSlider(), TestSwitch()],
    );
  }
}

class TestCheckBox extends StatefulWidget {
  const TestCheckBox({super.key});

  @override
  State<TestCheckBox> createState() => _TestCheckBoxState();
}

class _TestCheckBoxState extends State<TestCheckBox> {
  @override
  late List<bool> values;

  @override
  void initState() {
    super.initState();
    values = [false, false, false];
  }

  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
            value: values[0],
            onChanged: (value) => changeValue(0, value ?? false)),
        Checkbox(
            value: values[1],
            onChanged: (value) => changeValue(1, value ?? false)),
        Checkbox(
            value: values[2],
            onChanged: (value) => changeValue(2, value ?? false))
      ],
    );
  }

  void changeValue(int index, bool value) {
    setState(() {
      values[index] = value;
    });
  }
}

class TestSlider extends StatefulWidget {
  const TestSlider({super.key});

  @override
  State<TestSlider> createState() => _TestSliderState();
}

class _TestSliderState extends State<TestSlider> {
  double value = 0;

  @override
  Widget build(BuildContext context) {
    return Slider(
      divisions: 100,
      max: 100,
      min: 100,
      value: value,
      onChanged: (newValue) {
        setState(
          () {
            value = newValue;
          },
        );
      },
    );
  }
}

class TestSwitch extends StatefulWidget {
  const TestSwitch({super.key});

  @override
  State<TestSwitch> createState() => _TestSwitchState();
}

class _TestSwitchState extends State<TestSwitch> {
  @override
  bool chk = false;

  Widget build(BuildContext context) {
    return Column(
      children: [
        Switch(
          value: chk,
          onChanged: (newValue) => setState(
            () {
              chk = newValue;
            },
          ),
        ),
        CupertinoSwitch(value: chk, onChanged: (newValue) =>setState(() {
          chk =newValue;
        });)
      ],
    );
  }
}
