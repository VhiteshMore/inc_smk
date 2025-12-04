import 'package:json_annotation/json_annotation.dart';

part 'employee_dto.g.dart';

@JsonSerializable()
class EmployeeCreateDto {
  final String fullName;
  final String jobTitle;
  final String country;
  final double salary;

  EmployeeCreateDto({
    required this.fullName,
    required this.jobTitle,
    required this.country,
    required this.salary,
  });

  factory EmployeeCreateDto.fromJson(Map<String, dynamic> json) =>
      _$EmployeeCreateDtoFromJson(json);
  Map<String, dynamic> toJson() => _$EmployeeCreateDtoToJson(this);
}

@JsonSerializable()
class EmployeeDto {
  final int id;
  final String fullName;
  final String jobTitle;
  final String country;
  final double salary;

  EmployeeDto({
    required this.id,
    required this.fullName,
    required this.jobTitle,
    required this.country,
    required this.salary,
  });

  factory EmployeeDto.fromJson(Map<String, dynamic> json) =>
      _$EmployeeDtoFromJson(json);
  Map<String, dynamic> toJson() => _$EmployeeDtoToJson(this);

  factory EmployeeDto.empty() =>
      EmployeeDto(id: -1, fullName: '', jobTitle: '', country: '', salary: -1);
}
