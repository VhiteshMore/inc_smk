import 'package:incubyte_smk/dtos/employee_dto.dart';
import 'package:incubyte_smk/utils/validators.dart';
import 'package:test/test.dart';

void main() {
  test('CreateEmployee() in Validator return false', () async {
    final dto = EmployeeCreateDto(fullName: '', jobTitle: '', country: '', salary: 0);
    expect(
      Validators.createEmployee(dto),
      isFalse,
    );
  });

  test('CreateEmployee() in Validator return true', () async {
    final dto = EmployeeCreateDto(fullName: 'test', jobTitle: 'dev', country: 'india', salary: 10000);
    expect(
      Validators.createEmployee(dto),
      isTrue,
    );
  });
}
