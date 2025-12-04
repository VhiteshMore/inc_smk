import 'package:incubyte_smk/dtos/employee_dto.dart';
import 'package:incubyte_smk/services/salary_service.dart';
import 'package:incubyte_smk/utils/string_utils.dart';
import 'package:incubyte_smk/utils/validators.dart';
import 'package:test/test.dart';

void main() {
  test('CalculateSalary if India then 10% deduction', () async {
    expect(
      SalaryService.calculateNetSalary(country: 'india', gross: 100),
      equals((10.0, 90.0)),
    );
  });

  test('CalculateSalary if US other 12% deduction', () async {
    expect(
      SalaryService.calculateNetSalary(country: 'united states', gross: 100),
      equals((12.0, 88.0)),
    );
  });

  test('CalculateSalary if other then 0% deduction', () async {
    expect(
      SalaryService.calculateNetSalary(country: 'norway', gross: 100),
      equals((0.0, 100.0)),
    );
  });

  test('CalculateSalary if (country is empty) or (gross <0)', () async {
    expect(
      SalaryService.calculateNetSalary(country: 'norway', gross: -1),
      equals((-1.0, -1.0)),
    );
  });
}
