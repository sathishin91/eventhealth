import 'package:get_it/get_it.dart';
import 'package:http/http.dart';

import '../routes/route_generator.dart';

final getItInstance = GetIt.I;

Future init() async {
  getItInstance.registerLazySingleton<Client>(() => Client());

  // getItInstance.registerLazySingleton<TokenService>(
  //     () => TokenService(getItInstance(), getItInstance()));

  // getItInstance.registerLazySingleton<ApiClient>(
  //     () => ApiClient(getItInstance(), getItInstance()));

  getItInstance.registerLazySingleton<RouteGenerator>(() => RouteGenerator());

  // getItInstance.registerLazySingleton(() => LocalDataRepository());

  // getItInstance.registerLazySingleton(
  //     () => DasboardRepository(getItInstance<ApiClient>()));
}
