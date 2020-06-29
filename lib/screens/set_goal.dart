import 'package:flutter/material.dart';
import 'package:flutter_hackathon/models/todo.dart';
import 'package:flutter_hackathon/constants.dart';
import 'package:flutter_hackathon/data_lists/racial_justice_action_list.dart';
import 'package:flutter_hackathon/screens/weekly_progress.dart';
import 'package:flutter_hackathon/widgets/todo_item.dart';
import 'package:numberpicker/numberpicker.dart';
import 'package:cross_local_storage/cross_local_storage.dart';

class SetGoal extends StatefulWidget {
  @override
  _SetGoalState createState() => _SetGoalState();
}

class _SetGoalState extends State<SetGoal> {
  int _actionsWeekly = 5;
  List<Widget> todos = [];
  String currentCustomTodo = '';
  WeeklyProgress currentProgress;
  TextEditingController customTodoController = TextEditingController();
  LocalStorageInterface storage;

  void saveTodos() async {}

  @override
  void initState() {
    //todos = storage.getItem('todos');
    super.initState();
  }

  void addTodoItem() {
    if (currentCustomTodo != '') {
      setState(() {
        Todo todo = Todo(currentCustomTodo);
        todos.insert(0, todoToItem(todo));
        currentCustomTodo = '';
        customTodoController.clear();
      });
    }
  }

  TodoItem todoToItem(Todo todo) {
    return TodoItem(
        onDismissed: null,
        onTap: null,
        onCheckboxChanged: (checked) {
          setState(() {
            todo.copyWith(complete: checked);
          });
        },
        todo: todo);
  }

  List<TodoItem> buildSuggestionsList(List<Todo> todoList) {
    List<TodoItem> suggestionsList = [];
    for (Todo todo in todoList) {
      suggestionsList.add(todoToItem(todo));
    }
    return suggestionsList;
  }

  List<Widget> todosToShow(List<Widget> suggestions) {
    List<Widget> newList = [];
    //ListTile();
    newList.addAll(todos);
    newList.addAll(suggestions);
    return newList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(width: double.infinity), //widens column
          Text('I will commit to '),
          Expanded(
            child: TextFormField(
              initialValue: 'Climate and Social Activism',
            ),
          ),
          Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NumberPicker.integer(
                  initialValue: _actionsWeekly,
                  minValue: 1,
                  maxValue: 70,
                  onChanged: (value) {
                    setState(() {
                      _actionsWeekly = value;
                    });
                  }),
              Text('times per week'),
            ],
          ),
          // Expanded(
          //   child: FlatButton(
          //     onPressed: saveButtonPressed,
          //     child: Text('SAVE'),
          //   ),
          // ),
          Text('I will do this by doing the following:'),
          Row(
              //crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: TextField(
                    decoration: kTodoInputDecoration,
                    controller: customTodoController,
                    onChanged: (value) {
                      currentCustomTodo = value;
                    },
                    onSubmitted: (str) {
                      currentCustomTodo = str;
                      addTodoItem();
                    },
                  ),
                ),
                FlatButton(
                  onPressed: addTodoItem,
                  child: Text('Add'),
                ),
              ]),
          Expanded(
            child: ListView(
              children: todosToShow(buildSuggestionsList(kRaceList)),
            ),
          ),
        ],
      ),
    );
  }
}
