import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:incubyte_smk/utils/constants.dart';
import 'package:path/path.dart' as p;

import 'models/employee.dart';

part 'database.g.dart';

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFile = File(_defaultPath());
    return NativeDatabase(dbFile);
  });
}

String _defaultPath() {
  final dir = Directory.current.path;
  final dataDir = p.join(dir, 'data');
  Directory(dataDir).createSync(recursive: true);
  return p.join(dataDir, AppConstants.DB_NAME);
}

@DriftDatabase(tables: [Employee])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}