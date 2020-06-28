import 'package:flutter/material.dart';
import 'package:flutter_hackathon/Todo.dart';
import 'package:flutter_hackathon/constants.dart';
import 'package:flutter_hackathon/data-lists/racial-justice-action-list.dart';
import 'package:flutter_hackathon/widgets/TodoItem.dart';
import 'package:numberpicker/numberpicker.dart';

class SetGoal extends StatefulWidget {
  final String topic;

  SetGoal(this.topic);

  @override
  _SetGoalState createState() => _SetGoalState();
}

class _SetGoalState extends State<SetGoal> {
  int _actionsWeekly = 5;
  int selectedActions = 0;
  List<Widget> customTodos = [];
  String currentCustomTodo = '';
  TextEditingController customTodoController = TextEditingController();

  void saveButtonPressed () {

  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  void addTodoItem() {
    if (currentCustomTodo != '') {
      setState(() {
        Todo todo = Todo(currentCustomTodo);
        customTodos.insert(0, todoToItem(todo));
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
          
        });
      }, 
      todo: todo);
  }

  List<TodoItem> buildSuggestionsList(List<Todo> todoList) {
    List<TodoItem> suggestionsList = [];
    for (Todo todo in todoList) {
      suggestionsList.add(
        todoToItem(todo)
      );
    }
    return suggestionsList;
  }

  List<Widget> todosToShow(List<Widget> suggestions) {
    List<Widget> newList = [];
    //ListTile();
    newList.addAll(customTodos);
    newList.addAll(suggestions);
    return newList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Set Your Goal'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(width: double.infinity), //widens column
          Text('I will commit to ' ),
          Expanded(
            child: TextFormField(
              initialValue: widget.topic,
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
                  }
                ),
              Text('times per week'),
            ],
          ),
          Expanded(
            child: FlatButton(
              onPressed: saveButtonPressed,
              child: Text('SAVE'),
            ),
          ),
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
            ]
          ),
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


