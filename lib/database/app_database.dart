import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:eco_simple_tasks/database/daos/categories_dao.dart';
import 'package:eco_simple_tasks/database/daos/todos_dao.dart';
import 'package:eco_simple_tasks/database/tables/categories.dart';
import 'package:eco_simple_tasks/database/tables/todos.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'app_database.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'ecosimpletasks.db'));
    return NativeDatabase(file);
  });
}

@DriftDatabase(tables: [Todos, Categories], daos: [TodosDao, CategoriesDao])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}
