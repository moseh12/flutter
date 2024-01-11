import 'package:flutter/material.dart';

class ToDoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  final ValueSetter<bool?>? onChanged;

  const ToDoTile({
    Key? key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 25.0,
        right: 25,
        top: 25,
      ),
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Checkbox(
              value: taskCompleted,
              onChanged: onChanged,
              activeColor: Colors.black,
            ),
            Text(
              taskName,
              style: TextStyle(
                decoration: taskCompleted
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
