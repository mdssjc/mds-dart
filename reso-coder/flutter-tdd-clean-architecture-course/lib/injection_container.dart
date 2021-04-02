import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import 'file:///F:/Repositorios/mds-dart/reso-coder/flutter-tdd-clean-architecture-course/lib/core/network/network_info.dart';
import 'file:///F:/Repositorios/mds-dart/reso-coder/flutter-tdd-clean-architecture-course/lib/core/util/input_converter.dart';
import 'file:///F:/Repositorios/mds-dart/reso-coder/flutter-tdd-clean-architecture-course/lib/features/number_trivia/data/datasources/number_trivia_local_data_source.dart';
import 'file:///F:/Repositorios/mds-dart/reso-coder/flutter-tdd-clean-architecture-course/lib/features/number_trivia/data/datasources/number_trivia_remote_data_source.dart';
import 'file:///F:/Repositorios/mds-dart/reso-coder/flutter-tdd-clean-architecture-course/lib/features/number_trivia/data/repositories/number_trivia_repository_impl.dart';
import 'file:///F:/Repositorios/mds-dart/reso-coder/flutter-tdd-clean-architecture-course/lib/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'file:///F:/Repositorios/mds-dart/reso-coder/flutter-tdd-clean-architecture-course/lib/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';
import 'file:///F:/Repositorios/mds-dart/reso-coder/flutter-tdd-clean-architecture-course/lib/features/number_trivia/domain/usecases/get_random_number_trivia.dart';
import 'file:///F:/Repositorios/mds-dart/reso-coder/flutter-tdd-clean-architecture-course/lib/features/number_trivia/presentation/bloc/bloc_preferences.dart';

final sl = GetIt.instance;

Future<void> init() async {
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => http.Client());
  sl.registerLazySingleton(() => DataConnectionChecker());

  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(sl()));
  sl.registerLazySingleton(() => InputConverter());

  sl.registerLazySingleton<NumberTriviaRemoteDataSource>(
      () => NumberTriviaRemoteDataSourceImpl(client: sl()));
  sl.registerLazySingleton<NumberTriviaLocalDataSource>(
      () => NumberTriviaLocalDataSourceImpl(sharedPreferences: sl()));

  sl.registerLazySingleton<NumberTriviaRepository>(
    () => NumberTriviaRepositoryImpl(
      remoteDataSource: sl(),
      localDataSource: sl(),
      networkInfo: sl(),
    ),
  );

  sl.registerLazySingleton(() => GetConcreteNumberTrivia(sl()));
  sl.registerLazySingleton(() => GetRandomNumberTrivia(sl()));

  sl.registerFactory(
    () => NumberTriviaBloc(
      concrete: sl(),
      random: sl(),
      inputConverter: sl(),
    ),
  );
}
