import 'package:freezed_annotation/freezed_annotation.dart';

part 'jdoodle_response.freezed.dart';
part 'jdoodle_response.g.dart';

@freezed
class ExecuteCodeResponse with _$ExecuteCodeResponse {
  const factory ExecuteCodeResponse({
    required String output,
    required num statusCode,
    required String? memory,
    required String? cpuTime,
  }) = _ExecuteCodeResponse;

  const ExecuteCodeResponse._();

  factory ExecuteCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$ExecuteCodeResponseFromJson(json);
}
