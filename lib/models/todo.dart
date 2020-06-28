import 'package:todos_app_core/todos_app_core.dart';
import 'package:equatable/equatable.dart';
//import 'package:todos_repository_core/todos_repository_core.dart';
import 'package:string_validator/string_validator.dart';

class Todo extends Equatable {
  final bool complete;
  final String id;
  final String note;
  final String task;

  Todo(
    this.task, {
      this.complete = false,
      String note = '',
      String id,
    })  : this.note = note ?? '',
          this.id = id ?? Uuid().generateV4();

  Todo copyWith ({bool complete, String id, String note, String task}) {
    return Todo(
      task ?? this.task,
      complete: complete ?? this.complete,
      id: id ?? this.id,
      note: note ?? this.note,
    );
  }

  @override
  List<Object> get props => [complete, id, note, task];

  @override
  String toString() {
    return 'Todo { complete: $complete, task: $task, note: $note, id: $id }';
  }

  Todo fromString(String str) {

    List<String> chunks = str.split(',');
    bool isComplete = toBoolean(chunks[0].substring(17));
    //print (isComplete);
    
    String task = chunks[1].substring(7);
    //print(task);
    
    String note = chunks[2].substring(7);
    //print(note);
    
    // int id = toInt(chunks[3].substring(4, chunks[3].lastIndexOf(' ')));
    
    // print('$id');
    
    return Todo(task, note: note, complete: isComplete);
  }

  /*

  toJSONEncodable() {
    Map<String, dynamic> m = Map();

    m['id'] = this.id;
    m['task'] = this.task;
    m['complete'] = this.complete;
    m['note'] = this.note;

    return m;
  }

  Todo fromJSON (Map map) {
    return Todo(
      map['task'],
      complete: map['complete'],
      id: map['id'],
      note: map['note'],
    );
  }
*  Not for local storage
*/
  // TodoEntity toEntity() {
  //   return TodoEntity(task, id, note, complete);
  // }

  // static Todo fromEntity(TodoEntity entity) {
  //   return Todo(
  //     entity.task,
  //     complete: entity.complete ?? false,
  //     note: entity.note,
  //     id: entity.id ?? Uuid().generateV4,
  //   );
  // }

}

