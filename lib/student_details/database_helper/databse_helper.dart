import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../model_class/model_class.dart';

class Database_helper {
  static final _databasename = "My_database5.db";
  static final _databaseversion = 1;
  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    return openDatabase(join(path, _databasename),
        onCreate: (database, version) async {
      await database.execute(
          "CREATE TABLE STUDENT(id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT NOT NULL, email TEXT NOT NULL, course TEXT NOT NULL, adm_num TEXT NOT NULL, phonenum TEXT NOT  NULL, password TEXT NOT NULL)");
    }, version: _databaseversion);
  }

  Future<void> insertData(DataModel dataModel) async {
    final Database db = await initDB();
    db.insert("STUDENT", dataModel.toMap());

    // final Database db = await _initDatabase();
    // db.insert("STUDENT", modelClass.toMap());

    // print('insetdata');
  }

  Future<List<DataModel>> getData() async {
    final Database db = await initDB();
    final List<Map<String, Object?>> datas = await db.query("STUDENT");
    return datas.map((e) => DataModel.fromMap(e)).toList();
  }

  Future<void> delete(int id) async {
    final Database db = await initDB();
    await db.delete("STUDENT", where: "id=?", whereArgs: [id]);
  }

  Future<void> update(DataModel datamodel, int id) async {
    final Database db = await initDB();
    db.update("STUDENT", datamodel.toMap(), where: "id=?", whereArgs: [id]);
  }

  Future<List<DataModel>> login_check(String username, String password) async {
    final Database db = await initDB();
    final List<Map<String, Object?>> logindata = await db.rawQuery(
        "SELECT * from STUDENT where email='$username' AND password='$password' ");
    return logindata.map((e) => DataModel.fromMap(e)).toList();
  }
}
