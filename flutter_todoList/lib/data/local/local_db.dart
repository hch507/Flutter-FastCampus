
import 'package:flutter_todolist/data/entity/todo_isar.dart';
import 'package:flutter_todolist/data/entity/vo_todo.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
class Localdb{
  static late Isar _isar;

  Localdb._();

  static Localdb instance = Localdb._();
  Future<List<Todo>> getDataList() async{
    final document = await _isar.todoIsars.filter().idGreaterThan(0).findAll();
    return document.map((e) => Todo.fromDB(e)).toList();
  }
  static Future<void> init() async {
    final dir = await getApplicationDocumentsDirectory();
    _isar = await Isar.open([TodoIsarSchema], maxSizeMiB: 512, directory: dir.path);
  }

  Future addTodo(Todo todo) async {
    await _isar.writeTxn(() async {
      await _isar.todoIsars.put(todo.toDbModel());
    });
  }
  Future updateTodo(Todo todo) async {
    await _isar.writeTxn(() async {
      await _isar.todoIsars.put(todo.toDbModel());
    });
  }
  Future deleteTodo(int id) async {
    await _isar.writeTxn(() async {
      await _isar.todoIsars.delete(id);
    });
  }
}