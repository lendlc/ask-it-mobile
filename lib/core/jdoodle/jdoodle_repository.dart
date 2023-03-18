import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../api_call_mixin.dart';
import '../client.dart';
import 'jdoodle_dto.dart';
import 'jdoodle_response.dart';

part 'jdoodle_repository.g.dart';

class JDoodleRepository with ApiCallMixin {
  JDoodleRepository(this._client);

  final RestClient _client;

  Future<ExecuteCodeResponse> executeCode(ExecuteCodeDto dto) =>
      apiCallArgs<ExecuteCodeResponse, ExecuteCodeDto>(_client.executeCode, dto);
}

@riverpod
JDoodleRepository jDoodleRepository(JDoodleRepositoryRef ref) {
  final client = ref.watch(RestClient.provider);
  return JDoodleRepository(client);
}
