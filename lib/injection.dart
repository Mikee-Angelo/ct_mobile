import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get_it/get_it.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:scanner/core/interceptors/token_interceptor.dart';
import 'package:scanner/core/services/storage_service.dart';
import 'package:scanner/core/utility/config.dart';
import 'package:scanner/features/auth/data/datasources/auth_remote.dart';
import 'package:scanner/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:scanner/features/auth/domain/domain.dart';
import 'package:scanner/features/auth/presentation/bloc/auth_bloc.dart';
import 'package:scanner/features/profile/data/repositories/repositories.dart';
import 'package:scanner/features/profile/domain/repositories/repositories.dart';
import 'package:scanner/features/profile/domain/usecases/get_profile_usecase.dart';
import 'package:scanner/features/profile/domain/usecases/usecases.dart';
import 'package:scanner/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:scanner/features/route/presentation/bloc/route_bloc.dart';
import 'features/profile/data/datasources/datasources.dart';

final sl = GetIt.instance;

Future<void> init() async {
  // Initializes nb_utils shared_preferences

  EasyLoading.instance.maskType = EasyLoadingMaskType.black;

  final dio = Dio();

  sl
    //Services
    ..registerLazySingleton<StorageService>(StorageServiceImpl.new)
    ..registerLazySingleton(() => dio)

    //Blocs
    ..registerFactory(() => RouteBloc())
    ..registerFactory(() => AuthBloc(sl(), sl(), sl(), sl()))
    ..registerFactory(() => ProfileBloc(sl(), sl()))

    //Usecase
    ..registerLazySingleton(() => LoginUsecase(sl()))
    ..registerLazySingleton(() => RegisterUsecase(sl()))
    ..registerLazySingleton(() => CheckTokenUsecase(sl()))
    ..registerLazySingleton(() => LogoutUsecase(sl()))

    //Usecase - Profile
    ..registerLazySingleton(() => GetProfileUsecase(sl()))
    ..registerLazySingleton(() => GetCachedProfileUsecase(sl()))

    //Datasource - Auth
    ..registerLazySingleton(() => AuthRemote(sl()))
    ..registerLazySingleton(() => ProfileRemote(sl()))

    //Repository
    ..registerLazySingleton<AuthRepository>(
        () => AuthRepositoryImpl(sl(), sl()))
    ..registerLazySingleton<ProfileRepository>(
        () => ProfileRepositoryImpl(sl(), sl()));

  sl<Dio>()
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
    )
    ..interceptors.add(TokenInterception(sl()));
}
