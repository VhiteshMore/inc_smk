import 'package:incubyte_smk/dtos/employee_dto.dart';

abstract class EmployeeRepo {

  Future<EmployeeDto> createEmployee(EmployeeCreateDto dto);

  ///Todo: Implement getEmployees
  //Future<EmployeeDto> getEmployees(int limit, int skip);

  ///Todo: Implement getEmployee
  //Future<EmployeeDto> getEmployee(int employee_id);

  ///Todo: Implement updateEmployee
  //Future<EmployeeDto> updateEmployee(EmployeeCreateDto dto, int employee_id);

  ///Todo: Implement deleteEmployee
  //Future<EmployeeDto> deleteEmployee(int employee_id);

}