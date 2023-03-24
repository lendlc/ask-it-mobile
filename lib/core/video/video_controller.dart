import 'package:ask_it/core/callable_action.dart';
import 'package:ask_it/core/video/video_dto.dart';
import 'package:ask_it/core/video/video_model.dart';
import 'package:ask_it/core/video/video_repository.dart';
import 'package:fpdart/fpdart.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../basic_error.dart';
import '../types.dart';

part 'video_controller.g.dart';

@riverpod
Future<List<Video>> myVideos(MyVideosRef ref) async {
  final videoRepository = ref.watch(videoRepositoryProvider);
  final videos = await videoRepository.getUserVideos();
  return videos;
}

@riverpod
Future<List<VideoUploaderUser>> uploaders(UploadersRef ref) async {
  final videoRepository = ref.watch(videoRepositoryProvider);
  final uploaders = await videoRepository.getUploaders();
  return uploaders;
}

@riverpod
Future<List<Video>> tutorVideos(TutorVideosRef ref, num tutorId) async {
  final videoRepository = ref.watch(videoRepositoryProvider);
  final videos = await videoRepository.getTutorVideos(tutorId);
  return videos;
}

@riverpod
CallableAction<EitherResponse<bool>, UploadVideoDto> uploadVideo(UploadVideoRef ref) {
  final videoRepository = ref.watch(videoRepositoryProvider);

  return CallableAction((dto) async {
    try {
      await videoRepository.uploadVideo(dto);
      return right(true);
    } catch (e) {
      if (e is BasicError) {
        return left(e);
      }
      return left(BasicError(e.toString()));
    }
  });
}

@riverpod
CallableAction<EitherResponse<bool>, UpdateVideoDto> updateVideo(UpdateVideoRef ref, num videoId) {
  final videoRepository = ref.watch(videoRepositoryProvider);

  return CallableAction((dto) async {
    try {
      await videoRepository.updateVideo(videoId, dto);
      return right(true);
    } catch (e) {
      if (e is BasicError) {
        return left(e);
      }
      return left(BasicError(e.toString()));
    }
  });
}

@riverpod
CallableAction<EitherResponse<bool>, num> deleteVideo(DeleteVideoRef ref) {
  final videoRepository = ref.watch(videoRepositoryProvider);

  return CallableAction((videoId) async {
    try {
      await videoRepository.deleteVideo(videoId);
      return right(true);
    } catch (e) {
      if (e is BasicError) {
        return left(e);
      }
      return left(BasicError(e.toString()));
    }
  });
}
