import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:incubyte_smk/utils/constants.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import 'models/employee.dart';

part 'database.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final dbFile = File(p.join(dbFolder.path, AppConstants.DB_NAME));
    return NativeDatabase(dbFile);
  });
}

@DriftDatabase(tables: [Employee])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}