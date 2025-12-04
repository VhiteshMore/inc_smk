// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $EmployeeTable extends Employee
    with TableInfo<$EmployeeTable, EmployeeData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EmployeeTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _fullNameMeta =
      const VerificationMeta('fullName');
  @override
  late final GeneratedColumn<String> fullName = GeneratedColumn<String>(
      'full_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _jobTitleMeta =
      const VerificationMeta('jobTitle');
  @override
  late final GeneratedColumn<String> jobTitle = GeneratedColumn<String>(
      'job_title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _countryMeta =
      const VerificationMeta('country');
  @override
  late final GeneratedColumn<String> country = GeneratedColumn<String>(
      'country', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _salaryMeta = const VerificationMeta('salary');
  @override
  late final GeneratedColumn<double> salary = GeneratedColumn<double>(
      'salary', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, fullName, jobTitle, country, salary];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'employee';
  @override
  VerificationContext validateIntegrity(Insertable<EmployeeData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('full_name')) {
      context.handle(_fullNameMeta,
          fullName.isAcceptableOrUnknown(data['full_name']!, _fullNameMeta));
    } else if (isInserting) {
      context.missing(_fullNameMeta);
    }
    if (data.containsKey('job_title')) {
      context.handle(_jobTitleMeta,
          jobTitle.isAcceptableOrUnknown(data['job_title']!, _jobTitleMeta));
    } else if (isInserting) {
      context.missing(_jobTitleMeta);
    }
    if (data.containsKey('country')) {
      context.handle(_countryMeta,
          country.isAcceptableOrUnknown(data['country']!, _countryMeta));
    } else if (isInserting) {
      context.missing(_countryMeta);
    }
    if (data.containsKey('salary')) {
      context.handle(_salaryMeta,
          salary.isAcceptableOrUnknown(data['salary']!, _salaryMeta));
    } else if (isInserting) {
      context.missing(_salaryMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  EmployeeData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EmployeeData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      fullName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}full_name'])!,
      jobTitle: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}job_title'])!,
      country: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}country'])!,
      salary: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}salary'])!,
    );
  }

  @override
  $EmployeeTable createAlias(String alias) {
    return $EmployeeTable(attachedDatabase, alias);
  }
}

class EmployeeData extends DataClass implements Insertable<EmployeeData> {
  final int id;
  final String fullName;
  final String jobTitle;
  final String country;
  final double salary;
  const EmployeeData(
      {required this.id,
      required this.fullName,
      required this.jobTitle,
      required this.country,
      required this.salary});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['full_name'] = Variable<String>(fullName);
    map['job_title'] = Variable<String>(jobTitle);
    map['country'] = Variable<String>(country);
    map['salary'] = Variable<double>(salary);
    return map;
  }

  EmployeeCompanion toCompanion(bool nullToAbsent) {
    return EmployeeCompanion(
      id: Value(id),
      fullName: Value(fullName),
      jobTitle: Value(jobTitle),
      country: Value(country),
      salary: Value(salary),
    );
  }

  factory EmployeeData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EmployeeData(
      id: serializer.fromJson<int>(json['id']),
      fullName: serializer.fromJson<String>(json['fullName']),
      jobTitle: serializer.fromJson<String>(json['jobTitle']),
      country: serializer.fromJson<String>(json['country']),
      salary: serializer.fromJson<double>(json['salary']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'fullName': serializer.toJson<String>(fullName),
      'jobTitle': serializer.toJson<String>(jobTitle),
      'country': serializer.toJson<String>(country),
      'salary': serializer.toJson<double>(salary),
    };
  }

  EmployeeData copyWith(
          {int? id,
          String? fullName,
          String? jobTitle,
          String? country,
          double? salary}) =>
      EmployeeData(
        id: id ?? this.id,
        fullName: fullName ?? this.fullName,
        jobTitle: jobTitle ?? this.jobTitle,
        country: country ?? this.country,
        salary: salary ?? this.salary,
      );
  EmployeeData copyWithCompanion(EmployeeCompanion data) {
    return EmployeeData(
      id: data.id.present ? data.id.value : this.id,
      fullName: data.fullName.present ? data.fullName.value : this.fullName,
      jobTitle: data.jobTitle.present ? data.jobTitle.value : this.jobTitle,
      country: data.country.present ? data.country.value : this.country,
      salary: data.salary.present ? data.salary.value : this.salary,
    );
  }

  @override
  String toString() {
    return (StringBuffer('EmployeeData(')
          ..write('id: $id, ')
          ..write('fullName: $fullName, ')
          ..write('jobTitle: $jobTitle, ')
          ..write('country: $country, ')
          ..write('salary: $salary')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, fullName, jobTitle, country, salary);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EmployeeData &&
          other.id == this.id &&
          other.fullName == this.fullName &&
          other.jobTitle == this.jobTitle &&
          other.country == this.country &&
          other.salary == this.salary);
}

class EmployeeCompanion extends UpdateCompanion<EmployeeData> {
  final Value<int> id;
  final Value<String> fullName;
  final Value<String> jobTitle;
  final Value<String> country;
  final Value<double> salary;
  const EmployeeCompanion({
    this.id = const Value.absent(),
    this.fullName = const Value.absent(),
    this.jobTitle = const Value.absent(),
    this.country = const Value.absent(),
    this.salary = const Value.absent(),
  });
  EmployeeCompanion.insert({
    this.id = const Value.absent(),
    required String fullName,
    required String jobTitle,
    required String country,
    required double salary,
  })  : fullName = Value(fullName),
        jobTitle = Value(jobTitle),
        country = Value(country),
        salary = Value(salary);
  static Insertable<EmployeeData> custom({
    Expression<int>? id,
    Expression<String>? fullName,
    Expression<String>? jobTitle,
    Expression<String>? country,
    Expression<double>? salary,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (fullName != null) 'full_name': fullName,
      if (jobTitle != null) 'job_title': jobTitle,
      if (country != null) 'country': country,
      if (salary != null) 'salary': salary,
    });
  }

  EmployeeCompanion copyWith(
      {Value<int>? id,
      Value<String>? fullName,
      Value<String>? jobTitle,
      Value<String>? country,
      Value<double>? salary}) {
    return EmployeeCompanion(
      id: id ?? this.id,
      fullName: fullName ?? this.fullName,
      jobTitle: jobTitle ?? this.jobTitle,
      country: country ?? this.country,
      salary: salary ?? this.salary,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (fullName.present) {
      map['full_name'] = Variable<String>(fullName.value);
    }
    if (jobTitle.present) {
      map['job_title'] = Variable<String>(jobTitle.value);
    }
    if (country.present) {
      map['country'] = Variable<String>(country.value);
    }
    if (salary.present) {
      map['salary'] = Variable<double>(salary.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EmployeeCompanion(')
          ..write('id: $id, ')
          ..write('fullName: $fullName, ')
          ..write('jobTitle: $jobTitle, ')
          ..write('country: $country, ')
          ..write('salary: $salary')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $EmployeeTable employee = $EmployeeTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [employee];
}

typedef $$EmployeeTableCreateCompanionBuilder = EmployeeCompanion Function({
  Value<int> id,
  required String fullName,
  required String jobTitle,
  required String country,
  required double salary,
});
typedef $$EmployeeTableUpdateCompanionBuilder = EmployeeCompanion Function({
  Value<int> id,
  Value<String> fullName,
  Value<String> jobTitle,
  Value<String> country,
  Value<double> salary,
});

class $$EmployeeTableFilterComposer
    extends Composer<_$AppDatabase, $EmployeeTable> {
  $$EmployeeTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get fullName => $composableBuilder(
      column: $table.fullName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get jobTitle => $composableBuilder(
      column: $table.jobTitle, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get country => $composableBuilder(
      column: $table.country, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get salary => $composableBuilder(
      column: $table.salary, builder: (column) => ColumnFilters(column));
}

class $$EmployeeTableOrderingComposer
    extends Composer<_$AppDatabase, $EmployeeTable> {
  $$EmployeeTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get fullName => $composableBuilder(
      column: $table.fullName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get jobTitle => $composableBuilder(
      column: $table.jobTitle, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get country => $composableBuilder(
      column: $table.country, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get salary => $composableBuilder(
      column: $table.salary, builder: (column) => ColumnOrderings(column));
}

class $$EmployeeTableAnnotationComposer
    extends Composer<_$AppDatabase, $EmployeeTable> {
  $$EmployeeTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get fullName =>
      $composableBuilder(column: $table.fullName, builder: (column) => column);

  GeneratedColumn<String> get jobTitle =>
      $composableBuilder(column: $table.jobTitle, builder: (column) => column);

  GeneratedColumn<String> get country =>
      $composableBuilder(column: $table.country, builder: (column) => column);

  GeneratedColumn<double> get salary =>
      $composableBuilder(column: $table.salary, builder: (column) => column);
}

class $$EmployeeTableTableManager extends RootTableManager<
    _$AppDatabase,
    $EmployeeTable,
    EmployeeData,
    $$EmployeeTableFilterComposer,
    $$EmployeeTableOrderingComposer,
    $$EmployeeTableAnnotationComposer,
    $$EmployeeTableCreateCompanionBuilder,
    $$EmployeeTableUpdateCompanionBuilder,
    (EmployeeData, BaseReferences<_$AppDatabase, $EmployeeTable, EmployeeData>),
    EmployeeData,
    PrefetchHooks Function()> {
  $$EmployeeTableTableManager(_$AppDatabase db, $EmployeeTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EmployeeTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EmployeeTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EmployeeTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> fullName = const Value.absent(),
            Value<String> jobTitle = const Value.absent(),
            Value<String> country = const Value.absent(),
            Value<double> salary = const Value.absent(),
          }) =>
              EmployeeCompanion(
            id: id,
            fullName: fullName,
            jobTitle: jobTitle,
            country: country,
            salary: salary,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String fullName,
            required String jobTitle,
            required String country,
            required double salary,
          }) =>
              EmployeeCompanion.insert(
            id: id,
            fullName: fullName,
            jobTitle: jobTitle,
            country: country,
            salary: salary,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$EmployeeTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $EmployeeTable,
    EmployeeData,
    $$EmployeeTableFilterComposer,
    $$EmployeeTableOrderingComposer,
    $$EmployeeTableAnnotationComposer,
    $$EmployeeTableCreateCompanionBuilder,
    $$EmployeeTableUpdateCompanionBuilder,
    (EmployeeData, BaseReferences<_$AppDatabase, $EmployeeTable, EmployeeData>),
    EmployeeData,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$EmployeeTableTableManager get employee =>
      $$EmployeeTableTableManager(_db, _db.employee);
}
