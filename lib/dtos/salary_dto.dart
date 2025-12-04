import 'package:json_annotation/json_annotation.dart';

part 'salary_dto.g.dart';

@JsonSerializable()
class SalaryDto {
  final int employee_id;
  final double gross_salary;
  final double deductions;
  final double net_salary;
  final String country;

  SalaryDto({
    required this.employee_id,
    required this.gross_salary,
    required this.deductions,
    required this.net_salary,
    required this.country,
  });

  factory SalaryDto.fromJson(Map<String, dynamic> json) =>
      _$SalaryDtoFromJson(json);
  Map<String, dynamic> toJson() => _$SalaryDtoToJson(this);
}