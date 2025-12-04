import 'package:incubyte_smk/dtos/employee_dto.dart';
import 'package:incubyte_smk/dtos/metrics_dto.dart';

abstract class MetricsRepo {

  Future<MetricCountryDto> getCountryMetric(String country);

  Future<MetricJobTitleDto> getJobTitleMetric(String jobTitle);

}