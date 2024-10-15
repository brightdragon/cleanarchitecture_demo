
import 'package:cleanarchitecture_demo/data/data_source/user_data_source.dart';
import 'package:cleanarchitecture_demo/data/data_source/user_data_source_impl.dart';
import 'package:cleanarchitecture_demo/data/network/api_service.dart';
import 'package:cleanarchitecture_demo/data/repository/user_repository.dart';
import 'package:cleanarchitecture_demo/data/repository/user_repository_impl.dart';
import 'package:cleanarchitecture_demo/domain/usecase/get_user_usecase.dart';
import 'package:cleanarchitecture_demo/presentation/home/home_view_model.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setup(){

  // datsource
  dataSourceSetup();
  // repository
  repositorySetup();
  // usecase
  useCaseSetup();
  // viewModel
  viewModelSetup();

}

void dataSourceSetup(){
  
  // getIt.registerLazySingleton<ProductsDataSource>(
  //       () => ProductsDataSourceImpl());
  Dio dio = Dio();

  getIt.registerLazySingleton<UserDataSource>(() => UserDataSourceImpl(ApiService(dio)));

}

void repositorySetup(){

  // getIt.registerLazySingleton<CommonMetaRepository>(() => CommonMetaRepositoryImpl(commonMetaDataSource: getIt()));
  getIt.registerLazySingleton<UserRepository>(() => UserRepositoryImpl(userDataSource: getIt()));

}

void useCaseSetup(){
  getIt.registerLazySingleton<GetUserUseCase>(() => GetUserUseCase(userRepository: getIt()));
}

void viewModelSetup(){
  getIt.registerFactory<HomeViewModel>(() => HomeViewModel(getUserUseCase: getIt()));
}