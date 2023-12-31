import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_todolist/screen/main/write/vo_write_to_result.dart';
import 'package:intl/intl.dart';

class WriteTodoDialog extends StatefulWidget {
  const WriteTodoDialog({super.key});

  @override
  State<WriteTodoDialog> createState() => _WriteTodoDialogState();
}

class _WriteTodoDialogState extends State<WriteTodoDialog> {
  DateTime _selectedDate = DateTime.now();
  String? todo = null;
  final textController = TextEditingController();
  final node = FocusNode();

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Container(
        width: double.maxFinite,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Text(
                  "할 일을 적어주세요",
                  style: TextStyle(fontSize: 15),
                ),
                Expanded(flex: 1, child: Container()),
                Text(DateFormat("yyyy/MM/dd").format(_selectedDate)),
                IconButton(
                  onPressed: () {
                    _selectDate();
                  },
                  icon: Icon(Icons.calendar_month),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    focusNode: node,
                    controller: textController,
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    todo = textController.text;
                    if(todo!=null){
                      Navigator.pop(
                        context,
                        WriteTodoResult(
                          _selectedDate,
                          todo.toString(),
                        ),
                      );
                    }
                  },
                  child: Text("추가"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _selectDate() async {
    final date = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime.now().subtract(const Duration(days: 365)),
      lastDate: DateTime.now().add(const Duration(days: 365) * 10),
    );
    if (date != null) {
      setState(() {
        _selectedDate = date;
      });
    }
  }
}
