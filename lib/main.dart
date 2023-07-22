import 'package:booklyapp/features/home/data/rebos/homereposimplement.dart';
import 'package:booklyapp/features/home/presentation/manger/featurebooks/featurebooks_cubit.dart';
import 'package:booklyapp/features/home/presentation/manger/newstbooks/newsetbooks_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'constance.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'core/utliz/dio.dart';
import 'core/utliz/routers.dart';
import 'core/utliz/serveslocated.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupServiceLocator();
  DioHelper.init();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeatureBooksCubit(getIt.get<HomeReposimple>())
            ..featchfuturebooks(),
        ),
        BlocProvider(
            create: (context) => NewsetbooksCubit(
                  getIt.get<HomeReposimple>(),
                ))
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimyColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      ),
    );
  }
}
