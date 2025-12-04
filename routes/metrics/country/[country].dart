import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:incubyte_smk/database.dart';
import 'package:incubyte_smk/dtos/metrics_dto.dart';
import 'package:incubyte_smk/repositories/metrics_repo.dart';
import 'package:incubyte_smk/repositories/metrics_repo_impl.dart';

Future<Response> onRequest(RequestContext context, String country) async {
  if (context.request.method == HttpMethod.get) {
    return _getMetricsForCountry(context, country);
  }
  return Response(statusCode: HttpStatus.methodNotAllowed);
}

Future<Response> _getMetricsForCountry(RequestContext context, String country) async {
  try {

    if (country.isEmpty) return Response.json(body: {'error': 'Invalid input'}, statusCode: 400);

    MetricCountryDto result = await MetricsRepoImpl(appDatabase: AppDatabase()).getCountryMetric(country);

    if (result == MetricCountryDto.empty()) {
      return Response.json(body: {'error': 'Invalid JSON or data'}, statusCode: 400);
    } else {
      return Response.json(body: result, statusCode: 200);
    }
  } catch (e) {
    return Response.json(body: {'error': 'Something went wrong'}, statusCode: 400);
  }
}
