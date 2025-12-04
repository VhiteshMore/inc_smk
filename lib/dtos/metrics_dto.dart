import 'package:json_annotation/json_annotation.dart';

part 'metrics_dto.g.dart';

@JsonSerializable()
class MetricCountryDto {
  final String country;
  final double min_salary;
  final double max_salary;
  final double avg_salary;

  MetricCountryDto({
    required this.country,
    required this.min_salary,
    required this.max_salary,
    required this.avg_salary,
  });

  factory MetricCountryDto.fromJson(Map<String, dynamic> json) =>
      _$MetricCountryDtoFromJson(json);
  Map<String, dynamic> toJson() => _$MetricCountryDtoToJson(this);
}

@JsonSerializable()
class MetricJobTitleDto {
  final String job_title;
  final double avg_salary;

  MetricJobTitleDto({
    required this.job_title,
    required this.avg_salary,
  });

  factory MetricJobTitleDto.fromJson(Map<String, dynamic> json) =>
      _$MetricJobTitleDtoFromJson(json);
  Map<String, dynamic> toJson() => _$MetricJobTitleDtoToJson(this);
}

