import 'package:incubyte_smk/database.dart';
import 'package:incubyte_smk/dtos/metrics_dto.dart';
import 'package:incubyte_smk/repositories/metrics_repo.dart';
import 'package:incubyte_smk/utils/salary_util.dart';

class MetricsRepoImpl extends MetricsRepo {

  late final AppDatabase _appDb;

  MetricsRepoImpl({required AppDatabase appDatabase}) : _appDb = appDatabase;

  @override
  Future<MetricCountryDto> getCountryMetric(String country) async {
    try {
      final salaryList = await (_appDb.select(_appDb.employee)
            ..where((tbl) => tbl.country.equals(country.toLowerCase())))
          .map((e) => e.salary,).get();

      if (salaryList.isEmpty) return MetricCountryDto.empty();

      final minSalary = SalaryUtil.getMinSalary(salaryList);
      final maxSalary = SalaryUtil.getMaxSalary(salaryList);
      final avgSalary = SalaryUtil.getAvgSalary(salaryList);

      return MetricCountryDto(
        country: country,
        min_salary: minSalary,
        max_salary: maxSalary,
        avg_salary: avgSalary,
      );
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<MetricJobTitleDto> getJobTitleMetric(String jobTitle) async {
    try {
      final salarylist = await (_appDb.select(_appDb.employee)
        ..where((t) => t.jobTitle.equals(jobTitle.toLowerCase())))
          .map((r) => r.salary)
          .get();

      if (salarylist.isEmpty) return MetricJobTitleDto.empty();

      final avgSalary = SalaryUtil.getAvgSalary(salarylist);

      return MetricJobTitleDto(job_title: jobTitle, avg_salary: avgSalary);
    } catch (_) {
      rethrow;
    }
  }



}