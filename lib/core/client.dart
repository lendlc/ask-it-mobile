import 'package:ask_it/core/auth/auth_dto.dart';
import 'package:ask_it/core/auth/auth_model.dart';
import 'package:ask_it/core/auth/auth_response.dart';
import 'package:ask_it/core/local_storage.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'client.g.dart';

const String serverUrl = 'https://60bd-180-191-204-104.ap.ngrok.io';

@RestApi(baseUrl: '$serverUrl/api/v1/')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;
  static final provider = Provider(
    (ref) {
      return RestClient(
        Dio(
          BaseOptions(
            contentType: 'application/json',
            headers: {'Accept': 'application/json'},
          ),
        )
          ..interceptors.add(ref.read(apiTokenInterceptorProviderProvider))
          ..interceptors.add(
            PrettyDioLogger(
              requestHeader: true,
              requestBody: true,
              responseHeader: true,
            ),
          ),
      );
    },
  );

  @POST('auth/register/')
  Future<void> register(@Body() RegisterDto dto);

  @POST('auth/login/')
  Future<LoginResponse> login(@Body() LoginDto dto);

  @GET('auth/profile/')
  Future<UserProfile> profile();

  @POST('auth/logout/')
  Future<void> logout();

  @POST('auth/password_forgot/')
  Future<void> sendPasswordResetEmail(@Body() SendPasswordResetEmailDto dto);

  @PUT('auth/password_reset/')
  Future<void> resetPassword(@Body() ResetPasswordDto dto);

  @POST('auth/password_change/')
  Future<void> changePassword(@Body() ChangePasswordDto dto);
}

class _ApiTokenInterceptor extends Interceptor {
  _ApiTokenInterceptor(this._ref);

  final ApiTokenInterceptorProviderRef _ref;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final hasApiToken = _ref.read(localStorageProvider).hasData('token');

    if (!hasApiToken) {
      return handler.next(options);
    }

    final apiToken = _ref.read(localStorageProvider).read<String>('token');
    options.headers.addAll(<String, String>{'Authorization': 'Token $apiToken'});
    return handler.next(options);
  }
}

@riverpod
_ApiTokenInterceptor apiTokenInterceptorProvider(ApiTokenInterceptorProviderRef ref) =>
    _ApiTokenInterceptor(ref);
