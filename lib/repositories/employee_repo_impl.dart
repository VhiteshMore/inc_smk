import 'package:drift/drift.dart';
import 'package:incubyte_smk/database.dart';
import 'package:incubyte_smk/dtos/employee_dto.dart';
import 'package:incubyte_smk/repositories/employee_repo.dart';

class EmployeeRepoImpl extends EmployeeRepo {

  late final AppDatabase _appDb;

  EmployeeRepoImpl({required AppDatabase appDatabase}) : _appDb = appDatabase;

  @override
  Future<EmployeeDto> createEmployee(EmployeeCreateDto dto) async {
    try {
      final insertedId = await _appDb.into(_appDb.employee).insert(EmployeeCompanion(
        fullName: Value(dto.fullName),
        jobTitle: Value(dto.jobTitle),
        country: Value(dto.country),
        salary: Value(dto.salary),
      ));
      final employee = await (_appDb.select(_appDb.employee)..where((e) => e.id.equals(insertedId))).getSingle();

      return EmployeeDto(
        id: employee.id,
        fullName: employee.fullName,
        jobTitle: employee.jobTitle,
        country: employee.country,
        salary: employee.salary,
      );
    } catch (_) {
      rethrow;
    }
  }



}