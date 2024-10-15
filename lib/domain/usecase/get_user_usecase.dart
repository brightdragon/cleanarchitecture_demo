
import 'package:cleanarchitecture_demo/data/repository/user_repository.dart';
import 'package:cleanarchitecture_demo/domain/models/user.dart';
import 'package:logger/logger.dart';

class GetUserUseCase {

  final UserRepository _userRepository;

  GetUserUseCase({required UserRepository userRepository}): _userRepository = userRepository;

  Future<void> executeUserInfo() async {
    final result = await _userRepository.getUserData();

    result.forEach((data) {
      Logger().d('>>>>>>> id : ${data.id}, name : ${data.name}');
    });

  }

}