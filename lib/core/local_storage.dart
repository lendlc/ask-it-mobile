import 'package:get_storage/get_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'local_storage.g.dart';

@riverpod
GetStorage localStorage(LocalStorageRef ref) => GetStorage();
