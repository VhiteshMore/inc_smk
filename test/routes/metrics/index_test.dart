import 'package:incubyte_smk/dtos/employee_dto.dart';
import 'package:test/test.dart';

void main() {

  List<EmployeeDto> employeeList = [
    EmployeeDto(id: 1, fullName: 'test', jobTitle: 'react_dev', country: 'india', salary: 90),
    EmployeeDto(id: 2, fullName: 'test1', jobTitle: 'react_dev', country: 'india', salary: 100),
    EmployeeDto(id: 3, fullName: 'test3', jobTitle: 'flutter_dev', country: 'india', salary: 110),
    EmployeeDto(id: 4, fullName: 'test4', jobTitle: 'flutter_dev', country: 'us', salary: 110),
    EmployeeDto(id: 5, fullName: 'test5', jobTitle: 'flutter_dev', country: 'us', salary: 110),
  ];

  test('getCountryMetric if country is india', () {

    final salaryList = employeeList.where((elm) => elm.country == 'india').map((e) => e.salary).toList();

    final minSalary = _getMinSalary(salaryList);
    final maxSalary = _getMaxSalary(salaryList);
    final avgSalary = _getAvgSalary(salaryList);

    expect(
      (minSalary, maxSalary, avgSalary),
      equals((90.0, 110.0, 100.0)),
    );
  });

  test('getJobTitleMetric if jobTitle is flutter_dev', () async {

    final salaryList = employeeList.where((elm) => elm.jobTitle == 'flutter_dev').map((e) => e.salary).toList();

    final avgSalary = _getAvgSalary(salaryList);

    expect(avgSalary, 110.0);
  });
}

double _getMinSalary(List<double> list) {
  if (list.isEmpty) return -1;
  return list.reduce((a, b) => a < b ? a : b);
}

double _getMaxSalary(List<double> list) {
  if (list.isEmpty) return -1;
  return list.reduce((a, b) => a > b ? a : b);
}

double _getAvgSalary(List<double> list) {
  if (list.isEmpty) return -1;
  return list.reduce((a, b) => a + b) / list.length;
}
