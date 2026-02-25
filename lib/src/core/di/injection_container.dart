import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:todo_list_example/src/core/constants/database_cost.dart';
import 'package:todo_list_example/src/features/todos/data/datasources/todo_local_fstorage_datasource_impl.dart';
import 'package:todo_list_example/src/features/todos/data/datasources/todo_local_hive_datasource_impl.dart';

final GetIt sl = GetIt.instance;

Future<void> init() async {
  // Register your dependencies here

  // =================================================
  // Features - Products
  // =================================================

  final tempDir = await getTemporaryDirectory();
  Hive.init(tempDir.path);
  final boxHive = await Hive.openBox<String>(hiveBoxName);

  // Register Data Sources
  sl
    ..registerLazySingleton(
      () => TodoLocalFStorageDatasourceImpl(
        storage: const FlutterSecureStorage(),
      ),
    )
    ..registerLazySingleton(
      () => TodoLocalHiveDatasourceImpl(storage: boxHive),
    );
}
