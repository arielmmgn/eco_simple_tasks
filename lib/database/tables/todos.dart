import 'package:drift/drift.dart';

class Todos extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 1, max: 255)();
  BoolColumn get completed => boolean().withDefault(const Constant(false))();
  DateTimeColumn get day => dateTime().withDefault(currentDate)();
  DateTimeColumn get beginHour => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get endHour => dateTime().withDefault(currentDateAndTime)();
  DateTimeColumn get createdAt => dateTime().withDefault(currentDateAndTime)();
  IntColumn get categoryId => 
    integer().nullable().customConstraint('NULL REFERENCES categories(id)')();
}