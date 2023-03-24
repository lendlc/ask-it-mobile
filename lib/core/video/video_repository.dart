import 'package:ask_it/core/api_call_mixin.dart';
import 'package:ask_it/core/client.dart';
import 'package:ask_it/core/video/video_dto.dart';
import 'package:ask_it/core/video/video_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'video_repository.g.dart';

class VideoRepository with ApiCallMixin {
  VideoRepository(this._client);

  final RestClient _client;

  Future<List<Video>> getUserVideos() async => apiCall(() => _client.getMyUploads());

  Future<List<Video>> getTutorVideos(num tutorId) async =>
      apiCallArgs<List<Video>, num>(_client.getTutorUploads, tutorId);

  Future<void> uploadVideo(UploadVideoDto dto) => apiCall(
        () => _client.uploadVideo(
          dto.title,
          dto.description,
          dto.file,
        ),
      );

  Future<void> updateVideo(num videoId, UpdateVideoDto dto) =>
      apiCallArgs2<void, num, UpdateVideoDto>(
        _client.updateVideo,
        videoId,
        dto,
      );

  Future<void> deleteVideo(num videoId) => apiCallArgs<void, num>(
        _client.deleteVideo,
        videoId,
      );

  Future<List<VideoUploaderUser>> getUploaders() => apiCall(_client.getUploaders);
}

@riverpod
VideoRepository videoRepository(VideoRepositoryRef ref) {
  final client = ref.watch(RestClient.provider);
  return VideoRepository(client);
}
