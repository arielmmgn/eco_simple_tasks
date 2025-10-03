
import 'package:drift/drift.dart';
import 'package:eco_simple_tasks/database/app_database.dart';
import 'package:eco_simple_tasks/database/tables/categories.dart';

part 'categories_dao.g.dart';

@DriftAccessor(tables: [Categories])
class CategoriesDao extends DatabaseAccessor<AppDatabase> 
  with _$CategoriesDaoMixin {
  CategoriesDao(super.db);
}