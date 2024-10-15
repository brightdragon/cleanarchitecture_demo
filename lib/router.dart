
import 'package:cleanarchitecture_demo/injection.dart';
import 'package:cleanarchitecture_demo/presentation/home/home_view_model.dart';
import 'package:cleanarchitecture_demo/presentation/home/s_home.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:provider/provider.dart';

final goRouter = GoRouter(
    initialLocation: '/home',
    routes: [

      GoRoute(
          path: '/home',
          name: 'home',
          builder: (context, state){
            Logger().d('goRouter >>> home ');

            return ChangeNotifierProvider(
              create: (context) => getIt<HomeViewModel>(),
              child: HomeScreen(),
            );
          }
      ),

    ]
);