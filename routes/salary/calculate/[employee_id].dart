import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:incubyte_smk/database.dart';
import 'package:incubyte_smk/dtos/salary_dto.dart';
import 'package:incubyte_smk/repositories/salary_repo.dart';
import 'package:incubyte_smk/repositories/salary_repo_impl.dart';

Future<Response> onRequest(RequestContext context, String idStr) async {
  if (context.request.method == HttpMethod.get) {
    return _getSalaryDetails(context, idStr);
  }
  return Response(statusCode: HttpStatus.methodNotAllowed);
}

Future<Response> _getSalaryDetails(RequestContext context, String employeeId) async {
  try {

    final id = int.tryParse(employeeId);
    if (id == null) return Response.json(body: {'error': 'Invalid ID'}, statusCode: 400);

    SalaryDto result = await SalaryRepoImpl(appDatabase: AppDatabase()).calculateSalary(id);

    if (result == SalaryDto.empty()) {
      return Response.json(body: {'error': 'Invalid JSON or data'}, statusCode: 400);
    } else {
      return Response.json(body: result, statusCode: 200);
    }
  } catch (e) {
    return Response.json(body: {'error': 'Something went wrong'}, statusCode: 400);
  }
}
