
enum Weekday {sun, mon, tues, wed, thurs, fri, sat}


class WeekProg {
  Map _actedMap;
  int _taskGoal;
  int _tasksCompleted;


  WeekProg(this._taskGoal) {
    _actedMap = Map.fromEntries([
      MapEntry(Weekday.sun, false),
      MapEntry(Weekday.mon, false),
      MapEntry(Weekday.tues, false),
      MapEntry(Weekday.wed, false),
      MapEntry(Weekday.thurs, false),
      MapEntry(Weekday.fri, false),
      MapEntry(Weekday.sat, false),
    ]);
    _tasksCompleted = 0;
  }

// For displaying checks or x's for this week
//valid choices are only monday and sunday
  List<bool>getActedList({Weekday startDay}) {
    List<bool> actedList;
    if (startDay == Weekday.mon) {
      actedList = [
        _actedMap[Weekday.mon],
        _actedMap[Weekday.tues],
        _actedMap[Weekday.wed],
        _actedMap[Weekday.thurs],
        _actedMap[Weekday.fri],
        _actedMap[Weekday.sat],
        _actedMap[Weekday.sun],
      ];
    }
    // if (startDay == Weekday.sun) {
    else {
      actedList = _actedMap.values;
    }
    return actedList;
  }


/*
  toJSONEncodable() {
    Map<String, dynamic> m = Map.from(_actedMap);

    m['_taskGoal'] = _taskGoal;
    m['_tasksCompleted'] = _tasksCompleted;

    return m;
  }

  WeekProg fromJSON(Map map) {
    WeekProg newProg = WeekProg(map['_taskGoal']);
    newProg._tasksCompleted = map['_tasksCompleted'];
    newProg._actedMap = Map.from(map);
    newProg._actedMap.remove('_taskGoal');
    newProg._actedMap.remove('_tasksCompleted');
    return newProg;
  }
* if JSON necessary; not for local storage
*/
}