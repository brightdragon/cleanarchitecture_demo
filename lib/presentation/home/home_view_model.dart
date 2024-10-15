
import 'package:cleanarchitecture_demo/domain/usecase/get_user_usecase.dart';
import 'package:flutter/material.dart';

class HomeViewModel extends ChangeNotifier {

  final GetUserUseCase getUserUseCase;

  HomeViewModel({required this.getUserUseCase});


  void test(){
    getUserUseCase.executeUserInfo();
  }

}