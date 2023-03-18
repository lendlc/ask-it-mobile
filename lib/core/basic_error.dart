import 'package:intl/intl.dart';

class BasicError implements Exception {
  const BasicError(this.message);

  final String message;

  @override
  String toString() {
    return message;
  }
}

class ApiError implements BasicError {
  ApiError(this.errors);

  final Map<String, List> errors;

  @override
  String get message =>
      toBeginningOfSentenceCase(errors.values.first.first.toString()) ??
      errors.values.first.first.toString();

  @override
  String toString() {
    return message;
  }
}

class JDoodleError implements BasicError {
  JDoodleError(this.response);

  final Map<String, dynamic> response;

  @override
  String get message => response['error'] ?? 'Unknown error';

  @override
  String toString() {
    return message;
  }
}
