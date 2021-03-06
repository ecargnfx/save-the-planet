import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hackathon/constants.dart';
import 'package:todos_app_core/todos_app_core.dart';
import '../models/todo.dart';

class TodoItem extends StatelessWidget {
  final DismissDirectionCallback onDismissed;
  final GestureTapCallback onTap;
  final ValueChanged<bool> onCheckboxChanged;
  final Todo todo;

  TodoItem({
    Key key,
    @required this.onDismissed,
    @required this.onTap,
    @required this.onCheckboxChanged,
    @required this.todo,
  }) : super(key: key);

  @override 
  Widget build(BuildContext context) {
    return Dismissible(
      key: ArchSampleKeys.todoItem(todo.id),
      onDismissed: onDismissed,
      child: ListTile(
        onTap: onTap,
        leading: Checkbox(
          key: ArchSampleKeys.todoItemCheckbox(todo.id),
          value: todo.complete,
          onChanged: onCheckboxChanged,
        ),
        title: Text(
          todo.task,
          style: kTodoItemTextStyle,
          ),
        subtitle: todo.note.isNotEmpty
          ? Text(
            todo.note,
            key: ArchSampleKeys.todoItemNote(todo.id),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: kTodoNoteTextStyle,
          )
          : null,
      ),
    );
  }
}