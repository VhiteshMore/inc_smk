import 'package:incubyte_smk/dtos/employee_dto.dart';
import 'package:incubyte_smk/utils/string_utils.dart';
import 'package:incubyte_smk/utils/validators.dart';
import 'package:test/test.dart';

void main() {
  test('CalculateSalary if India 10% deduction', () async {
    expect(
      _calculateNetSalary(country: 'india', gross: 100),
      equals((10.0, 90.0)),
    );
  });

  test('CalculateSalary if US 12% deduction', () async {
    expect(
      _calculateNetSalary(country: '', gross: 100),
      equals((12.0, 88.0)),
    );
  });
}

(double deductions, double net) _calculateNetSalary({
  required String country,
  required double gross,
}) {

  double deductions = 0;

  if (country == 'india') {
    deductions = gross * 0.15;
  } else {
    deductions = gross;
  }
  return (deductions, gross - deductions);
}
