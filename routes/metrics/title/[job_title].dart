import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:incubyte_smk/database.dart';
import 'package:incubyte_smk/dtos/metrics_dto.dart';
import 'package:incubyte_smk/repositories/metrics_repo.dart';
import 'package:incubyte_smk/repositories/metrics_repo_impl.dart';

Future<Response> onRequest(RequestContext context, String title) async {
  if (context.request.method == HttpMethod.get) {
    return _getMetricsForTitle(context, title);
  }
  return Response(statusCode: HttpStatus.methodNotAllowed);
}

Future<Response> _getMetricsForTitle(RequestContext context, String title) async {
  try {

    if (title.isEmpty) return Response.json(body: {'error': 'Invalid input'}, statusCode: 400);

    MetricJobTitleDto result = await MetricsRepoImpl(appDatabase: AppDatabase()).getJobTitleMetric(title);

    if (result == MetricJobTitleDto.empty()) {
      return Response.json(body: {'error': 'Invalid JSON or data'}, statusCode: 400);
    } else {
      return Response.json(body: result, statusCode: 200);
    }
  } catch (e) {
    return Response.json(body: {'error': 'Something went wrong'}, statusCode: 400);
  }
}
