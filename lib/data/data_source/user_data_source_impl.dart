
import 'package:cleanarchitecture_demo/data/data_source/user_data_source.dart';
import 'package:cleanarchitecture_demo/data/dto/user_dto.dart';
import 'package:cleanarchitecture_demo/data/network/api_service.dart';

class UserDataSourceImpl extends UserDataSource {

  final ApiService _apiService;

  UserDataSourceImpl(this._apiService);

  @override
  Future<List<UserDto>> userApi() {
    return _apiService.userApi();
  }

}