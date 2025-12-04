import 'package:drift/drift.dart';

class Employee extends Table {

  IntColumn get id => integer().autoIncrement()();
  TextColumn get fullName => text()();
  TextColumn get jobTitle => text()();
  TextColumn get country => text()();
  RealColumn get salary => real()();

}