import 'package:flutter_app/app_screens/Todo.dart';
import 'package:moor_flutter/moor_flutter.dart';

part 'moor_database.g.dart';

class Todos extends Table {
  IntColumn get id => integer().autoIncrement()();

  TextColumn get title => text().withLength(min: 1, max: 50)();
}

@UseMoor(tables: [Todos])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(FlutterQueryExecutor.inDatabaseFolder(path: 'db.sqlite',
      logStatements: true));

  @override
  int get schemaVersion => 1;

  Stream<List<Todo>> getAllTodo() => select(todos).watch();
  Future insetTodo(Todo todo) => into(todos).insert(todo);
  Future updateTodo(Todo todo) => update(todos).replace(todo);
  Future deleteTodo(Todo todo) => delete(todos).delete(todo);


}