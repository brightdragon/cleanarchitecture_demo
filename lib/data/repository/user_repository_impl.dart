
import 'package:cleanarchitecture_demo/data/data_source/user_data_source.dart';
import 'package:cleanarchitecture_demo/data/dto/user_dto.dart';
import 'package:cleanarchitecture_demo/data/repository/user_repository.dart';

class UserRepositoryImpl extends UserRepository {

  final UserDataSource _userDataSource;

  UserRepositoryImpl({
    required UserDataSource userDataSource
  }) : _userDataSource = userDataSource;

  @override
  Future<List<UserDto>> getUserData() {
    return _userDataSource.userApi();
  }

}