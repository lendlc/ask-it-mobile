import 'package:ask_it/core/auth/auth_dto.dart';
import 'package:ask_it/core/auth/auth_repository.dart';
import 'package:ask_it/core/callable_action.dart';
import 'package:ask_it/core/types.dart';
import 'package:dio/dio.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_controller.g.dart';

@riverpod
CallableAction<EitherResponse<bool>, RegisterDto> register(RegisterRef ref) {
  final authRepository = ref.watch(authRepositoryProvider);
  return CallableAction((RegisterDto dto) async {
    try {
      await authRepository.register(dto);
      return right(true);
    } catch (e) {
      if (e is DioError) {
        return left(e.message);
      }

      return left(e.toString());
    }
  }, null);
}
