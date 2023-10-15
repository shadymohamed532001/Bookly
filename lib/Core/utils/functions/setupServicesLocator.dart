import 'package:bookly/Core/utils/apiServices.dart';
import 'package:bookly/Features/Home/data/dataSources/HomeLocalDataSources/HomeLocalDataSources.dart';
import 'package:bookly/Features/Home/data/dataSources/HomeRemoteDataSources/HomeRemoteDataSources.dart';
import 'package:bookly/Features/Home/data/repos/HomeReposImpl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServicesLocator() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));

  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      homeLocalDataSoureces: HomeLocalDataSourecesImpl(),
      homeRemoteDataSoureces: HomeRemoteDataSourecesImpl(
        apiServices: getIt.get<ApiServices>(),
      ),
    ),
  );
}
