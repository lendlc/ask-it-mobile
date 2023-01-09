import 'package:flutter_riverpod/flutter_riverpod.dart';

class CallableAction<T, R> extends StateNotifier<AsyncValue<T?>> {
  CallableAction(this._callable) : super(AsyncValue.data(null));

  final Future<T> Function(R) _callable;

  bool get isBusy => state.isLoading;

  Future<T?> call(R arg) async {
    state = AsyncValue.loading();

    late final T? value;

    state = await AsyncValue.guard(() async {
      final result = await _callable(arg);
      value = result;
      return result;
    });

    return value;
  }
}
