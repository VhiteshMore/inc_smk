import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:incubyte_smk/dtos/salary_dto.dart';
import 'package:incubyte_smk/repositories/salary_repo.dart';
import 'package:incubyte_smk/utils/injector.dart';

Future<Response> onRequest(RequestContext context, String idStr) async {
  await injectDependencies();
  if (context.request.method == HttpMethod.get) {
    return _getSalaryDetails(context, idStr);
  }
  return Response(statusCode: HttpStatus.methodNotAllowed);
}

Future<Response> _getSalaryDetails(RequestContext context, String employeeId) async {
  try {

    final id = int.tryParse(employeeId);
    if (id == null) return Response.json(body: {'error': 'Invalid ID'}, statusCode: 400);

    SalaryDto result = await injector<SalaryRepo>().calculateSalary(id);

    if (result == SalaryDto.empty()) {
      return Response.json(body: {'error': 'Invalid JSON or data'}, statusCode: 400);
    } else {
      return Response.json(body: result, statusCode: 200);
    }
  } catch (e) {
    return Response.json(body: {'error': 'Something went wrong'}, statusCode: 400);
  }
}
