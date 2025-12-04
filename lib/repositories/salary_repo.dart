import 'package:incubyte_smk/dtos/salary_dto.dart';

abstract class SalaryRepo {

  Future<SalaryDto> calculateSalary(int employee_id);

}