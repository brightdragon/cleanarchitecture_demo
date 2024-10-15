
import 'package:cleanarchitecture_demo/data/dto/user_dto.dart';

abstract class UserDataSource {
  Future<List<UserDto>> userApi();
}