
import 'package:cleanarchitecture_demo/data/dto/user_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com/')
abstract class ApiService {

  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  @GET('/users')
  Future<List<UserDto>> userApi();

}