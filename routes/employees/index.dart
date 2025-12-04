import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:incubyte_smk/database.dart';
import 'package:incubyte_smk/dtos/employee_dto.dart';
import 'package:incubyte_smk/repositories/employee_repo.dart';
import 'package:incubyte_smk/repositories/employee_repo_impl.dart';
import 'package:incubyte_smk/utils/validators.dart';

Future<Response> onRequest(RequestContext context) async {
  if (context.request.method == HttpMethod.post) {
    return _createEmployee(context);
  }
  return Response(statusCode: HttpStatus.methodNotAllowed);
}

Future<Response> _createEmployee(RequestContext context) async {
  try {

    final json = await context.request.json();
    final dto = EmployeeCreateDto.fromJson(json as Map<String, dynamic>);

    if (Validators.createEmployee(dto)) {
      EmployeeDto result = await EmployeeRepoImpl(appDatabase: AppDatabase()).createEmployee(dto);

      if (result == EmployeeDto.empty()) {
        return Response.json(body: {'error': 'Invalid JSON or data'}, statusCode: 400);
      } else {
        return Response.json(body: result, statusCode: 201);
      }
    } else {
      return Response.json(body: {'error': 'Invalid JSON or data'}, statusCode: 400);
    }
  } catch (e) {
    return Response.json(body: {'error': 'Something went wrong'}, statusCode: 400);
  }
}
