import 'package:get_it/get_it.dart';
import 'package:incubyte_smk/database.dart';
import 'package:incubyte_smk/repositories/employee_repo.dart';
import 'package:incubyte_smk/repositories/employee_repo_impl.dart';

GetIt injector = GetIt.instance;

Future<void> injectDependencies() async {

  final AppDatabase _appDatabase = AppDatabase();

  injector.registerLazySingleton<AppDatabase>(() => _appDatabase);

  injector.registerFactory<EmployeeRepo>(() => EmployeeRepoImpl(appDatabase: _appDatabase));

}