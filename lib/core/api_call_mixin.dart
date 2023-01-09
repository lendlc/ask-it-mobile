import 'package:dio/dio.dart';

import 'basic_error.dart';

mixin ApiCallMixin {
  Future<T> apiCall<T>(Future<T> Function() callable) async {
    try {
      final response = await callable();
      return response;
    } on DioError catch (e) {
      if (e.response != null) {
        throw ApiError(e.response!.data as Map<String, List<String>>);
      }
      throw BasicError(e.message);
    } catch (e) {
      throw BasicError(e.toString());
    }
  }

  Future<T> apiCallArgs<T, E>(Future<T> Function(E) callable, E arguments) async {
    try {
      final response = await callable(arguments);
      return response;
    } on DioError catch (e) {
      if (e.response != null) {
        throw ApiError(Map<String, List>.from(e.response!.data));
      }
      throw BasicError(e.message);
    } catch (e) {
      throw BasicError(e.toString());
    }
  }
}
