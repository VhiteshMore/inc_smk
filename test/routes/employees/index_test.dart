import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:incubyte_smk/dtos/employee_dto.dart';
import 'package:incubyte_smk/utils/validators.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';
// import '../../../routes/employees/index.dart' as route;

class _MockRequestContext extends Mock implements RequestContext {}

void main() {
  test('CreateEmployee() in Validator return false', () async {
    final dto = EmployeeCreateDto(fullName: '', jobTitle: '', country: '', salary: 0);
    expect(
      Validators.createEmployee(dto),
      isTrue,
    );
  });
  // group('POST /', () {
  //   test('responds with a 400 and {error: Invalid JSON or data}.', () async {
  //     final context = _MockRequestContext();
  //     final response = await route.onRequest(context);
  //     expect(response.statusCode, equals(HttpStatus.ok));
  //     expect(
  //       response.body(),
  //       completion(equals({'error': 'Invalid JSON or data'})),
  //     );
  //   });
  // });
}
