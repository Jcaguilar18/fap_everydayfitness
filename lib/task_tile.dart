import 'package:flutter/material.dart';


class TaskTile extends StatefulWidget {
  final String taskTitle;
  final bool isChecked;
  final Function checkboxCallback;
  final void Function() longPressCallback;

  TaskTile(
      {required this.taskTitle,
        required this.isChecked,
        required this.checkboxCallback,
        required this.longPressCallback,
        Key? key})
      : super(key: key);

  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  late bool _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = widget.isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: widget.longPressCallback,
      title: Text(
        widget.taskTitle,
        style: TextStyle(
            decoration: _isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        value: _isChecked,
        onChanged: (value) {
          widget.checkboxCallback(value);
          setState(() {
            _isChecked = value!;
          });
        },
      ),
    );
  }
}