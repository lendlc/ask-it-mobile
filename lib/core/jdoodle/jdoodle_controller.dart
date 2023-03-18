import 'package:ask_it/constants.dart';
import 'package:ask_it/core/jdoodle/jdoodle_dto.dart';
import 'package:ask_it/core/jdoodle/jdoodle_repository.dart';
import 'package:ask_it/core/jdoodle/jdoodle_response.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../basic_error.dart';
import '../callable_action.dart';
import '../types.dart';

part 'jdoodle_controller.g.dart';

@riverpod
CallableAction<EitherResponse<ExecuteCodeResponse>, String> executeCode(ExecuteCodeRef ref) {
  final jdoodleRepository = ref.watch(jDoodleRepositoryProvider);
  return CallableAction((String code) async {
    try {
      final response = await jdoodleRepository.executeCode(
        ExecuteCodeDto(
          clientId: JDoodleSettings.clientId,
          clientSecret: JDoodleSettings.clientSecret,
          script: code,
          stdin: JDoodleSettings.stdin,
          language: JDoodleSettings.language,
          versionIndex: JDoodleSettings.versionIndex,
        ),
      );
      return right(response);
    } catch (e) {
      if (e is BasicError) {
        return left(e);
      }
      return left(BasicError(e.toString()));
    }
  });
}
