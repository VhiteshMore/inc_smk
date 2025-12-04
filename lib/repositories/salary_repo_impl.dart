import 'package:incubyte_smk/database.dart';
import 'package:incubyte_smk/dtos/salary_dto.dart';
import 'package:incubyte_smk/repositories/salary_repo.dart';

class SalaryRepoImpl extends SalaryRepo {

  late final AppDatabase _appDb;

  SalaryRepoImpl({required AppDatabase appDatabase}) : _appDb = appDatabase;

  @override
  Future<SalaryDto> calculateSalary(int employee_id) async {

    final employee = await (_appDb.select(_appDb.employee)..where((e) => e.id.equals(employee_id))).getSingleOrNull();
    if (employee == null) {
      return SalaryDto.empty();
    }

    ///Todo: Refactor this with actual implementation
    final (deductions, netSalary) = (employee.salary, employee.salary);

    return SalaryDto(
        employee_id: employee.id,
        gross_salary: employee.salary,
        country: employee.country,
        deductions: deductions,
        net_salary: netSalary);
  }



}