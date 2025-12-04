// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metrics_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MetricCountryDto _$MetricCountryDtoFromJson(Map<String, dynamic> json) =>
    MetricCountryDto(
      country: json['country'] as String,
      min_salary: (json['min_salary'] as num).toDouble(),
      max_salary: (json['max_salary'] as num).toDouble(),
      avg_salary: (json['avg_salary'] as num).toDouble(),
    );

Map<String, dynamic> _$MetricCountryDtoToJson(MetricCountryDto instance) =>
    <String, dynamic>{
      'country': instance.country,
      'min_salary': instance.min_salary,
      'max_salary': instance.max_salary,
      'avg_salary': instance.avg_salary,
    };

MetricJobTitleDto _$MetricJobTitleDtoFromJson(Map<String, dynamic> json) =>
    MetricJobTitleDto(
      job_title: json['job_title'] as String,
      avg_salary: (json['avg_salary'] as num).toDouble(),
    );

Map<String, dynamic> _$MetricJobTitleDtoToJson(MetricJobTitleDto instance) =>
    <String, dynamic>{
      'job_title': instance.job_title,
      'avg_salary': instance.avg_salary,
    };
