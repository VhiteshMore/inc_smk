// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EmployeeCreateDto _$EmployeeCreateDtoFromJson(Map<String, dynamic> json) =>
    EmployeeCreateDto(
      fullName: json['fullName'] as String,
      jobTitle: json['jobTitle'] as String,
      country: json['country'] as String,
      salary: (json['salary'] as num).toDouble(),
    );

Map<String, dynamic> _$EmployeeCreateDtoToJson(EmployeeCreateDto instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'jobTitle': instance.jobTitle,
      'country': instance.country,
      'salary': instance.salary,
    };

EmployeeDto _$EmployeeDtoFromJson(Map<String, dynamic> json) => EmployeeDto(
      id: (json['id'] as num).toInt(),
      fullName: json['fullName'] as String,
      jobTitle: json['jobTitle'] as String,
      country: json['country'] as String,
      salary: (json['salary'] as num).toDouble(),
    );

Map<String, dynamic> _$EmployeeDtoToJson(EmployeeDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'fullName': instance.fullName,
      'jobTitle': instance.jobTitle,
      'country': instance.country,
      'salary': instance.salary,
    };
