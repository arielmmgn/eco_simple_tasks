// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $TodosTable extends Todos with TableInfo<$TodosTable, Todo> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TodosTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    additionalChecks: GeneratedColumn.checkTextLength(
      minTextLength: 1,
      maxTextLength: 255,
    ),
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _completedMeta = const VerificationMeta(
    'completed',
  );
  @override
  late final GeneratedColumn<bool> completed = GeneratedColumn<bool>(
    'completed',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("completed" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _dayMeta = const VerificationMeta('day');
  @override
  late final GeneratedColumn<DateTime> day = GeneratedColumn<DateTime>(
    'day',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDate,
  );
  static const VerificationMeta _beginHourMeta = const VerificationMeta(
    'beginHour',
  );
  @override
  late final GeneratedColumn<DateTime> beginHour = GeneratedColumn<DateTime>(
    'begin_hour',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _endHourMeta = const VerificationMeta(
    'endHour',
  );
  @override
  late final GeneratedColumn<DateTime> endHour = GeneratedColumn<DateTime>(
    'end_hour',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: false,
    defaultValue: currentDateAndTime,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    completed,
    day,
    beginHour,
    endHour,
    createdAt,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'todos';
  @override
  VerificationContext validateIntegrity(
    Insertable<Todo> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('completed')) {
      context.handle(
        _completedMeta,
        completed.isAcceptableOrUnknown(data['completed']!, _completedMeta),
      );
    }
    if (data.containsKey('day')) {
      context.handle(
        _dayMeta,
        day.isAcceptableOrUnknown(data['day']!, _dayMeta),
      );
    }
    if (data.containsKey('begin_hour')) {
      context.handle(
        _beginHourMeta,
        beginHour.isAcceptableOrUnknown(data['begin_hour']!, _beginHourMeta),
      );
    }
    if (data.containsKey('end_hour')) {
      context.handle(
        _endHourMeta,
        endHour.isAcceptableOrUnknown(data['end_hour']!, _endHourMeta),
      );
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Todo map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Todo(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      completed: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}completed'],
      )!,
      day: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}day'],
      )!,
      beginHour: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}begin_hour'],
      )!,
      endHour: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}end_hour'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $TodosTable createAlias(String alias) {
    return $TodosTable(attachedDatabase, alias);
  }
}

class Todo extends DataClass implements Insertable<Todo> {
  final int id;
  final String title;
  final bool completed;
  final DateTime day;
  final DateTime beginHour;
  final DateTime endHour;
  final DateTime createdAt;
  const Todo({
    required this.id,
    required this.title,
    required this.completed,
    required this.day,
    required this.beginHour,
    required this.endHour,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['title'] = Variable<String>(title);
    map['completed'] = Variable<bool>(completed);
    map['day'] = Variable<DateTime>(day);
    map['begin_hour'] = Variable<DateTime>(beginHour);
    map['end_hour'] = Variable<DateTime>(endHour);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  TodosCompanion toCompanion(bool nullToAbsent) {
    return TodosCompanion(
      id: Value(id),
      title: Value(title),
      completed: Value(completed),
      day: Value(day),
      beginHour: Value(beginHour),
      endHour: Value(endHour),
      createdAt: Value(createdAt),
    );
  }

  factory Todo.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Todo(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      completed: serializer.fromJson<bool>(json['completed']),
      day: serializer.fromJson<DateTime>(json['day']),
      beginHour: serializer.fromJson<DateTime>(json['beginHour']),
      endHour: serializer.fromJson<DateTime>(json['endHour']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'completed': serializer.toJson<bool>(completed),
      'day': serializer.toJson<DateTime>(day),
      'beginHour': serializer.toJson<DateTime>(beginHour),
      'endHour': serializer.toJson<DateTime>(endHour),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Todo copyWith({
    int? id,
    String? title,
    bool? completed,
    DateTime? day,
    DateTime? beginHour,
    DateTime? endHour,
    DateTime? createdAt,
  }) => Todo(
    id: id ?? this.id,
    title: title ?? this.title,
    completed: completed ?? this.completed,
    day: day ?? this.day,
    beginHour: beginHour ?? this.beginHour,
    endHour: endHour ?? this.endHour,
    createdAt: createdAt ?? this.createdAt,
  );
  Todo copyWithCompanion(TodosCompanion data) {
    return Todo(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      completed: data.completed.present ? data.completed.value : this.completed,
      day: data.day.present ? data.day.value : this.day,
      beginHour: data.beginHour.present ? data.beginHour.value : this.beginHour,
      endHour: data.endHour.present ? data.endHour.value : this.endHour,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Todo(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('completed: $completed, ')
          ..write('day: $day, ')
          ..write('beginHour: $beginHour, ')
          ..write('endHour: $endHour, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, title, completed, day, beginHour, endHour, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Todo &&
          other.id == this.id &&
          other.title == this.title &&
          other.completed == this.completed &&
          other.day == this.day &&
          other.beginHour == this.beginHour &&
          other.endHour == this.endHour &&
          other.createdAt == this.createdAt);
}

class TodosCompanion extends UpdateCompanion<Todo> {
  final Value<int> id;
  final Value<String> title;
  final Value<bool> completed;
  final Value<DateTime> day;
  final Value<DateTime> beginHour;
  final Value<DateTime> endHour;
  final Value<DateTime> createdAt;
  const TodosCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.completed = const Value.absent(),
    this.day = const Value.absent(),
    this.beginHour = const Value.absent(),
    this.endHour = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  TodosCompanion.insert({
    this.id = const Value.absent(),
    required String title,
    this.completed = const Value.absent(),
    this.day = const Value.absent(),
    this.beginHour = const Value.absent(),
    this.endHour = const Value.absent(),
    this.createdAt = const Value.absent(),
  }) : title = Value(title);
  static Insertable<Todo> custom({
    Expression<int>? id,
    Expression<String>? title,
    Expression<bool>? completed,
    Expression<DateTime>? day,
    Expression<DateTime>? beginHour,
    Expression<DateTime>? endHour,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (completed != null) 'completed': completed,
      if (day != null) 'day': day,
      if (beginHour != null) 'begin_hour': beginHour,
      if (endHour != null) 'end_hour': endHour,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  TodosCompanion copyWith({
    Value<int>? id,
    Value<String>? title,
    Value<bool>? completed,
    Value<DateTime>? day,
    Value<DateTime>? beginHour,
    Value<DateTime>? endHour,
    Value<DateTime>? createdAt,
  }) {
    return TodosCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      completed: completed ?? this.completed,
      day: day ?? this.day,
      beginHour: beginHour ?? this.beginHour,
      endHour: endHour ?? this.endHour,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (completed.present) {
      map['completed'] = Variable<bool>(completed.value);
    }
    if (day.present) {
      map['day'] = Variable<DateTime>(day.value);
    }
    if (beginHour.present) {
      map['begin_hour'] = Variable<DateTime>(beginHour.value);
    }
    if (endHour.present) {
      map['end_hour'] = Variable<DateTime>(endHour.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TodosCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('completed: $completed, ')
          ..write('day: $day, ')
          ..write('beginHour: $beginHour, ')
          ..write('endHour: $endHour, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $TodosTable todos = $TodosTable(this);
  late final TodosDao todosDao = TodosDao(this as AppDatabase);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [todos];
}

typedef $$TodosTableCreateCompanionBuilder =
    TodosCompanion Function({
      Value<int> id,
      required String title,
      Value<bool> completed,
      Value<DateTime> day,
      Value<DateTime> beginHour,
      Value<DateTime> endHour,
      Value<DateTime> createdAt,
    });
typedef $$TodosTableUpdateCompanionBuilder =
    TodosCompanion Function({
      Value<int> id,
      Value<String> title,
      Value<bool> completed,
      Value<DateTime> day,
      Value<DateTime> beginHour,
      Value<DateTime> endHour,
      Value<DateTime> createdAt,
    });

class $$TodosTableFilterComposer extends Composer<_$AppDatabase, $TodosTable> {
  $$TodosTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get completed => $composableBuilder(
    column: $table.completed,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get day => $composableBuilder(
    column: $table.day,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get beginHour => $composableBuilder(
    column: $table.beginHour,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get endHour => $composableBuilder(
    column: $table.endHour,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$TodosTableOrderingComposer
    extends Composer<_$AppDatabase, $TodosTable> {
  $$TodosTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get completed => $composableBuilder(
    column: $table.completed,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get day => $composableBuilder(
    column: $table.day,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get beginHour => $composableBuilder(
    column: $table.beginHour,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get endHour => $composableBuilder(
    column: $table.endHour,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TodosTableAnnotationComposer
    extends Composer<_$AppDatabase, $TodosTable> {
  $$TodosTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<bool> get completed =>
      $composableBuilder(column: $table.completed, builder: (column) => column);

  GeneratedColumn<DateTime> get day =>
      $composableBuilder(column: $table.day, builder: (column) => column);

  GeneratedColumn<DateTime> get beginHour =>
      $composableBuilder(column: $table.beginHour, builder: (column) => column);

  GeneratedColumn<DateTime> get endHour =>
      $composableBuilder(column: $table.endHour, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$TodosTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TodosTable,
          Todo,
          $$TodosTableFilterComposer,
          $$TodosTableOrderingComposer,
          $$TodosTableAnnotationComposer,
          $$TodosTableCreateCompanionBuilder,
          $$TodosTableUpdateCompanionBuilder,
          (Todo, BaseReferences<_$AppDatabase, $TodosTable, Todo>),
          Todo,
          PrefetchHooks Function()
        > {
  $$TodosTableTableManager(_$AppDatabase db, $TodosTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TodosTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TodosTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TodosTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<bool> completed = const Value.absent(),
                Value<DateTime> day = const Value.absent(),
                Value<DateTime> beginHour = const Value.absent(),
                Value<DateTime> endHour = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => TodosCompanion(
                id: id,
                title: title,
                completed: completed,
                day: day,
                beginHour: beginHour,
                endHour: endHour,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String title,
                Value<bool> completed = const Value.absent(),
                Value<DateTime> day = const Value.absent(),
                Value<DateTime> beginHour = const Value.absent(),
                Value<DateTime> endHour = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => TodosCompanion.insert(
                id: id,
                title: title,
                completed: completed,
                day: day,
                beginHour: beginHour,
                endHour: endHour,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TodosTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TodosTable,
      Todo,
      $$TodosTableFilterComposer,
      $$TodosTableOrderingComposer,
      $$TodosTableAnnotationComposer,
      $$TodosTableCreateCompanionBuilder,
      $$TodosTableUpdateCompanionBuilder,
      (Todo, BaseReferences<_$AppDatabase, $TodosTable, Todo>),
      Todo,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$TodosTableTableManager get todos =>
      $$TodosTableTableManager(_db, _db.todos);
}
