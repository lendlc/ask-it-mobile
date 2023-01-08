import 'package:ask_it/core/auth/auth_dto.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/http.dart';

part 'client.g.dart';

const String serverUrl = 'http://127.0.0.1:8000';

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
  Future<void> register({
    @Body() required RegisterDto dto,
  });
}
