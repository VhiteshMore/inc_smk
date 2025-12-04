import 'package:incubyte_smk/dtos/employee_dto.dart';

class Validators {

  static bool createEmployee(EmployeeCreateDto dto) {
    bool isValid = true;
    if (dto.fullName.isEmpty || dto.jobTitle.isEmpty || dto.salary <= 0 || dto.country.isEmpty) {
      isValid = false;
    }
    return isValid;
  }

}