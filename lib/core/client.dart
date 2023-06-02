import 'dart:io';

import 'package:ask_it/core/appointment/appointment_dto.dart';
import 'package:ask_it/core/appointment/appointment_model.dart';
import 'package:ask_it/core/auth/auth_dto.dart';
import 'package:ask_it/core/auth/auth_model.dart';
import 'package:ask_it/core/auth/auth_response.dart';
import 'package:ask_it/core/chat/chat_model.dart';
import 'package:ask_it/core/local_storage.dart';
import 'package:ask_it/core/schedule/schedule_model.dart';
import 'package:ask_it/core/video/video_dto.dart';
import 'package:ask_it/core/video/video_model.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'chat/chat_dto.dart';
import 'jdoodle/jdoodle_dto.dart';
import 'jdoodle/jdoodle_response.dart';
import 'schedule/schedule_dto.dart';

part 'client.g.dart';

const String serverUrl = 'https://askitcapstone.live';
// const String serverUrl = 'https://e507-180-191-195-240.ap.ngrok.io';

@RestApi(baseUrl: '$serverUrl/api/v1/')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;
  static final provider = Provider(
    (ref) {
      return RestClient(
        Dio(
          BaseOptions(
            contentType: 'application/json',
            headers: {'Accept': 'application/json'},
          ),
        )
          ..interceptors.add(ref.read(apiTokenInterceptorProviderProvider))
          ..interceptors.add(
            PrettyDioLogger(
              requestHeader: true,
              requestBody: true,
              responseHeader: true,
            ),
          ),
      );
    },
  );

  @POST('auth/register/')
  Future<void> register(@Body() RegisterDto dto);

  @POST('auth/login/')
  Future<LoginResponse> login(@Body() LoginDto dto);

  @GET('auth/profile/')
  Future<UserProfile> profile();

  @POST('auth/logout/')
  Future<void> logout();

  @POST('auth/password_forgot/')
  Future<void> sendPasswordResetEmail(@Body() SendPasswordResetEmailDto dto);

  @PUT('auth/password_reset/')
  Future<void> resetPassword(@Body() ResetPasswordDto dto);

  @PUT('auth/password_change/')
  Future<void> changePassword(@Body() ChangePasswordDto dto);

  @GET('schedules/')
  Future<List<Schedule>> getMySchedules();

  @GET('schedule_list/')
  Future<List<Schedule>> getSubjectSchedules(@Query('sub') String subject);

  @POST('schedules/')
  Future<void> createSchedule(@Body() CreateScheduleDto dto);

  @PUT('schedules/{id}/')
  Future<void> updateSchedule(@Path() num id, @Body() CreateScheduleDto dto);

  @DELETE('schedules/{id}/')
  Future<void> deleteSchedule(@Path() num id);

  @POST('https://api.jdoodle.com/v1/execute')
  Future<ExecuteCodeResponse> executeCode(@Body() ExecuteCodeDto dto);

  @GET('video/my_uploads/')
  Future<List<Video>> getMyUploads();

  @POST('video/upload/')
  @MultiPart()
  Future<void> uploadVideo(
    @Part() String title,
    @Part() String description,
    @Part() File file,
  );

  @GET('tutors/')
  Future<List<VideoUploaderUser>> getUploaders();

  @GET('video/list/')
  Future<List<Video>> getTutorUploads(@Query('tutor') num tutorId);

  @PATCH('video/{id}/')
  Future<void> updateVideo(@Path() num id, @Body() UpdateVideoDto dto);

  @DELETE('video/{id}/')
  Future<void> deleteVideo(@Path() num id);

  @POST('tutee/appointments/')
  Future<void> createAppointment(@Body() CreateAppointmentDto dto);

  @GET('tutee/appointments/')
  Future<List<Appointment>> getMyAppointments();

  @GET('chat/conversations/')
  Future<List<Conversation>> getMyConversations();

  @POST('chat/conversations/create/')
  Future<Conversation> createConversation(@Body() CreateConversationDto dto);

  @GET('chat/conversations/{id}/')
  Future<ConversationMessages> getConversation(@Path() num id);

  @POST('chat/message/')
  Future<void> sendMessage(@Body() SendMessageDto dto);
}

class _ApiTokenInterceptor extends Interceptor {
  _ApiTokenInterceptor(this._ref);

  final ApiTokenInterceptorProviderRef _ref;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final hasApiToken = _ref.read(localStorageProvider).hasData('token');

    if (!hasApiToken) {
      return handler.next(options);
    }

    final apiToken = _ref.read(localStorageProvider).read<String>('token');
    options.headers.addAll(<String, String>{'Authorization': 'Token $apiToken'});
    return handler.next(options);
  }
}

@riverpod
_ApiTokenInterceptor apiTokenInterceptorProvider(ApiTokenInterceptorProviderRef ref) =>
    _ApiTokenInterceptor(ref);
