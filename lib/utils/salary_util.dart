import 'package:incubyte_smk/utils/string_utils.dart';

class SalaryUtil {

  static (double deductions, double net) calculateNetSalary({
    required String country,
    required double gross,
  }) {
    final String parsedCountry = StringUtils.getParseableCountry(country);

    if (parsedCountry.isEmpty || gross < 0) return (-1.0, -1.0);

    final deductions = switch (parsedCountry) {
      'india' => gross * 0.10,
      'united_states' => gross * 0.12,
      _ => 0.0,
    };
    return (deductions, gross - deductions);
  }

  static double getMinSalary(List<double> list) {
    if (list.isEmpty) return -1;
    return list.reduce((a, b) => a < b ? a : b);
  }

  static double getMaxSalary(List<double> list) {
    if (list.isEmpty) return -1;
    return list.reduce((a, b) => a > b ? a : b);
  }

  static double getAvgSalary(List<double> list) {
    if (list.isEmpty) return -1;
    return list.reduce((a, b) => a + b) / list.length;
  }

}