import 'package:e_commerce_app/core/app_configs/route_generator.dart';
import 'package:e_commerce_app/core/app_theme/theme.dart';
import 'package:e_commerce_app/core/dependency_injection/service_locator.dart';
import 'package:e_commerce_app/core/utils/commen_extensions.dart';
import 'package:e_commerce_app/features/home_screen/data/repositories/restaurant_details_repository_imp.dart';
import 'package:e_commerce_app/features/home_screen/presentation/cubit/home_screen_cubit.dart';
import 'package:e_commerce_app/features/home_screen/presentation/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MaterialAppHome extends StatelessWidget {
  const MaterialAppHome({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeScreenCubit>(
      create: (context) => HomeScreenCubit(
        repository: getIt.get<RestaurantDetailsRepositoryImp>(),
      ),
      child: MaterialApp(
        title: 'E-Commerce',
        theme: AppTheme.lightTheme,
        debugShowCheckedModeBanner: false,
        onGenerateRoute: RouteGenerator.generate,
        scaffoldMessengerKey: scaffoldMessengerKey,
        home: const HomeScreen(),
      ),
    );
  }
}
