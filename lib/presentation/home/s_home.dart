

import 'package:cleanarchitecture_demo/presentation/home/home_view_model.dart';
import 'package:cleanarchitecture_demo/router.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {

  late HomeViewModel viewModel;
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    viewModel = context.read<HomeViewModel>();

    return Scaffold(
      body: ElevatedButton(onPressed: (){
        viewModel.test();
      }, child: Text('buutton')),
    );
  }
}
