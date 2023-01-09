import 'package:ask_it/core/auth/auth_dto.dart';
import 'package:ask_it/core/auth/auth_response.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/http.dart';

part 'client.g.dart';

const String serverUrl = 'https://cf7c-180-191-204-84.ap.ngrok.io';

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
        )..interceptors.add(
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
}
