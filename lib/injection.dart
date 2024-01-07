import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get_it/get_it.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:scanner/core/services/storage_service.dart';
import 'package:scanner/core/utility/config.dart';
import 'package:scanner/features/auth/data/datasources/auth_remote.dart';
import 'package:scanner/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:scanner/features/auth/domain/repositories/auth_repository.dart';
import 'package:scanner/features/auth/domain/usecases/login_use_case.dart';
import 'package:scanner/features/auth/presentation/bloc/auth_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Initializes nb_utils shared_preferences
  initialize();

  EasyLoading.instance.maskType = EasyLoadingMaskType.black;

  final dio = Dio();
  dio
    ..options.baseUrl = Config.baseUrl
    ..options.headers.addAll({
      Headers.acceptHeader: 'application/json',
      Headers.contentTypeHeader: 'application/json'
    })
    ..interceptors.add(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    );

  sl

    //Services
    ..registerLazySingleton(() => dio)
    ..registerLazySingleton<StorageService>(StorageServiceImpl.new)

    //Usecase
    ..registerLazySingleton(() => LoginUsecase(sl()))

    //Datasource - Auth
    ..registerLazySingleton(() => AuthRemote(sl()))

    //Blocs
    ..registerFactory(() => AuthBloc(sl()))

    //Repository
    ..registerLazySingleton<AuthRepository>(
        () => AuthRepositoryImpl(sl(), sl()));
}
