import 'package:incubyte_smk/dtos/employee_dto.dart';
import 'package:incubyte_smk/utils/string_utils.dart';
import 'package:incubyte_smk/utils/validators.dart';
import 'package:test/test.dart';

void main() {
  test('CalculateSalary if India then 10% deduction', () async {
    expect(
      _calculateNetSalary(country: 'india', gross: 100),
      equals((10.0, 90.0)),
    );
  });

  test('CalculateSalary if US other 12% deduction', () async {
    expect(
      _calculateNetSalary(country: '', gross: 100),
      equals((12.0, 88.0)),
    );
  });

  test('CalculateSalary if other then 0% deduction', () async {
    expect(
      _calculateNetSalary(country: 'norway', gross: 100),
      equals((100.0, 0.0)),
    );
  });

  test('CalculateSalary if (country is empty) or (gross <0)', () async {
    expect(
      _calculateNetSalary(country: 'norway', gross: -1),
      equals((-1.0, -1.0)),
    );
  });
}

(double deductions, double net) _calculateNetSalary({
  required String country,
  required double gross,
}) {

  if (country.isEmpty || gross < 0) {
    return (-1.0, -1.0);
  }

  double deductions = gross;

  if (country == 'india') {
    deductions = gross * 0.10;
  } else if (country == 'united states') {
    deductions = gross * 0.12;
  }
  return (deductions, gross - deductions);
}
