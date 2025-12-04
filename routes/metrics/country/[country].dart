import 'dart:io';

import 'package:dart_frog/dart_frog.dart';
import 'package:incubyte_smk/dtos/metrics_dto.dart';
import 'package:incubyte_smk/dtos/salary_dto.dart';
import 'package:incubyte_smk/repositories/metrics_repo.dart';
import 'package:incubyte_smk/repositories/salary_repo.dart';
import 'package:incubyte_smk/utils/injector.dart';

Future<Response> onRequest(RequestContext context, String country) async {
  await injectDependencies();
  if (context.request.method == HttpMethod.get) {
    return _getMetricsForCountry(context, country);
  }
  return Response(statusCode: HttpStatus.methodNotAllowed);
}

Future<Response> _getMetricsForCountry(RequestContext context, String country) async {
  try {

    if (country.isEmpty) return Response.json(body: {'error': 'Invalid input'}, statusCode: 400);

    MetricCountryDto result = await injector<MetricsRepo>().getCountryMetric(country);

    if (result == MetricCountryDto.empty()) {
      return Response.json(body: {'error': 'Invalid JSON or data'}, statusCode: 400);
    } else {
      return Response.json(body: result, statusCode: 200);
    }
  } catch (e) {
    return Response.json(body: {'error': 'Something went wrong'}, statusCode: 400);
  }
}
