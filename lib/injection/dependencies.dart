import 'package:beesiha_test/data/preferences/user_shared_preferences.dart';
import 'package:beesiha_test/data/services/http_client/dio_http_client.dart';
import 'package:beesiha_test/data/services/http_client/dio_http_client_builder.dart';
import 'package:beesiha_test/domain/preferences/user_preferences.dart';
import 'package:beesiha_test/presentation/routes/router.gr.dart';
import 'package:beesiha_test/presentation/utils/ext1.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:streaming_shared_preferences/streaming_shared_preferences.dart';

import 'injector.dart';

class DependencyManager {
  static Future<void> inject() async {
    final sharedPrefs = await StreamingSharedPreferences.instance;
    injector.registerLazySingleton<StreamingSharedPreferences>(() => sharedPrefs);
    injector.registerLazySingleton<UserPreferences>(() => UserSharedPreferences(sharedPrefs));
    injector.registerLazySingleton<AppRouter>(() => AppRouter());

    final dioBuilder = DioHttpClientBuilder();
    dioBuilder.setBaseUrl(apiUrl);
    dioBuilder.setSendTimeout(15000);
    dioBuilder.setConnectTimeout(15000);
    dioBuilder.setReceiveTimeout(15000);
    dioBuilder.addInterceptor(
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        error: true,
        compact: true,
        maxWidth: 90,
      ),
    );
    final dioClient = dioBuilder.build();
    injector.registerFactory<DioHttpClient>(() => dioClient);
    injector.registerFactory<Dio>(() => dioClient.dio);
    await configureDependencies();
  }
}
