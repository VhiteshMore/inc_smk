import 'package:incubyte_smk/utils/string_utils.dart';

class SalaryService {

  static (double deductions, double net) calculateNetSalary({
    required String country,
    required double gross,
  }) {

    if (country.isEmpty || gross < 0) {
      return (-1.0, -1.0);
    }

    double deductions = gross;

    if (country == 'india') {
      deductions = gross * 0.10;
    } else if (country == 'united states') {
      deductions = gross * 0.12;
    }
    return (deductions, gross - deductions);
  }

}