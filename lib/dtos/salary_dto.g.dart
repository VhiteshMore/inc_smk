// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'salary_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalaryDto _$SalaryDtoFromJson(Map<String, dynamic> json) => SalaryDto(
      employee_id: (json['employee_id'] as num).toInt(),
      gross_salary: (json['gross_salary'] as num).toDouble(),
      deductions: (json['deductions'] as num).toDouble(),
      net_salary: (json['net_salary'] as num).toDouble(),
      country: json['country'] as String,
    );

Map<String, dynamic> _$SalaryDtoToJson(SalaryDto instance) => <String, dynamic>{
      'employee_id': instance.employee_id,
      'gross_salary': instance.gross_salary,
      'deductions': instance.deductions,
      'net_salary': instance.net_salary,
      'country': instance.country,
    };
