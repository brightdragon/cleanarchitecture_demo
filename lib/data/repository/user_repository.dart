
import 'package:cleanarchitecture_demo/data/dto/user_dto.dart';

abstract class UserRepository {
  Future<List<UserDto>> getUserData();
}