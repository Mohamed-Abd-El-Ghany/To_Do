import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';
import 'package:todo/models/task.dart';

class DBHelper {
  static Database? _db;
  static const int _version = 1;
  static const String _tableName = 'tasks';

  static Future<void> initDb() async {
    if (_db != null) {
      debugPrint('not null db');
      return;
    }
    try {
      String _path = '${await getDatabasesPath()}task.db';
      debugPrint('in database path');
      _db = await openDatabase(
        _path,
        version: _version,
        onCreate: (Database db, int version) async {
          return db.execute(
            'CREATE TABLE $_tableName ('
            'id INTEGER PRIMARY KEY AUTOINCREMENT, '
            'title TEXT, note TEXT, date TEXT, '
            'startTime TEXT, endTime TEXT, '
            'remind INTEGER, repeat TEXT, '
            'color INTEGER, '
            'isCompleted INTEGER)',
          );
        },
      );
      print('Database Created');
    } catch (e) {
      print(e);
    }
  }

  static Future<int> insert(Task? task) async {
    print('insert function called');
    try {
      return await _db!.insert(
        _tableName,
        task!.toJson(),
      );
    } catch (e) {
      print('We are here');
      return 9000;
    }
  }

  static Future<int> delete(Task task) async {
    print('delete function called');
    return await _db!.delete(_tableName, where: 'id = ?', whereArgs: [task.id]);
  }

  static Future<int> deleteAll() async {
    print('All Database deleted');
    return await _db!.delete(_tableName);
  }

  static Future<List<Map<String, dynamic>>> query() async {
    print('query function called');
    return await _db!.query(_tableName);
  }

  static Future<int> update(int id) async {
    print('update function called');
    return await _db!.rawUpdate('''
      UPDATE tasks
      SET isCompleted = ?
      WHERE id = ?
      ''', [1, id]);
  }
}
