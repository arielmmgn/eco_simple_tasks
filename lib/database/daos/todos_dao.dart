
import 'package:drift/drift.dart';
import 'package:eco_simple_tasks/database/app_database.dart';
import 'package:eco_simple_tasks/database/tables/todos.dart';

part 'todos_dao.g.dart';

@DriftAccessor(tables: [Todos])
class TodosDao extends DatabaseAccessor<AppDatabase> with _$TodosDaoMixin{
  TodosDao(super.db);

  Future<List<Todo>> getAll() => select(todos).get();
}