import 'package:booklyapp/features/home/data/rebos/homereposimplement.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<HomeReposimple>(HomeReposimple());
}
