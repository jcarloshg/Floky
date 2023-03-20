import 'package:floky/data/usecase/response_activities/get_activities_by_key_word/state.get_activities_by_key_word.dart';
import 'package:floky/data/usecase/response_activities/get_activity_by_id/state.get_activity_by_id.dart';
import 'package:floky/data/usecase/response_activities/get_recent_activities/state.get_recent_activities.dart';
import 'package:floky/data/usecase/view_posts/comment_post/state.comment_post.dart';
import 'package:floky/data/usecase/view_posts/get_comments_from_post_id/state.get_comments_from_post_id.dart';
import 'package:floky/dependencyInjection/global_state/global_state.dart';
import 'package:floky/dependencyInjection/setup_di.dart';
import 'package:floky/domain/change_notifier/authenticate/log_in/change_notifier.log_in.dart';
import 'package:floky/domain/change_notifier/authenticate/register_student/change_notifier.register_student.dart';
import 'package:floky/views/pages/authenticate/pages/reset_pass/controllers/confirm_reset_password/change_notifier.confirm_reset_password.dart';
import 'package:floky/domain/change_notifier/response_activities/change_notifier.response_activities.dart';
import 'package:floky/views/pages/authenticate/pages/reset_pass/controllers/reset_pass/change_notifier.reset_pass.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

List<SingleChildWidget> getProviders(BuildContext context) {
  final responseActivitiesProvider = getResponseActivitiesProviders();
  final authenticateProviders = getAuthenticateProviders();
  final viewPostsProviders = getViewPostsProviders();

  final List<SingleChildWidget> providers = [
    ChangeNotifierProvider(
      create: (_) => di<GlobalState>(),
      lazy: false,
    ),
    ...authenticateProviders,
    ...responseActivitiesProvider,
    ...viewPostsProviders,
  ];

  return providers;
}

List<SingleChildWidget> getViewPostsProviders() {
  final List<SingleChildWidget> providers = [
    ChangeNotifierProvider(
      create: (_) => di<GetCommentsFromPostIdState>(),
      lazy: false,
    ),
    ChangeNotifierProvider(
      create: (_) => di<CommentPostChangeNotifier>(),
      lazy: false,
    ),
  ];
  return providers;
}

List<SingleChildWidget> getAuthenticateProviders() {
  final List<SingleChildWidget> providers = [
    //
    //
    // authenticate
    ChangeNotifierProvider(
      create: (_) => di<LoginChangeNotifier>(),
      lazy: false,
    ),
    //
    //
    // register_student
    ChangeNotifierProvider(
      create: (_) => di<RegisterStudentChangeNotifier>(),
      lazy: false,
    ),
    //
    //
    // reset_pass
    ChangeNotifierProvider(
      create: (_) => di<ResetPassChangeNotifier>(),
      lazy: false,
    ),
    ChangeNotifierProvider(
      create: (_) => di<ConfirmResetPasswordChangeNotifier>(),
      lazy: false,
    ),
  ];
  return providers;
}

List<SingleChildWidget> getResponseActivitiesProviders() {
  final List<SingleChildWidget> providers = [
    ChangeNotifierProvider(
      create: (_) => di<ResponseActivitiesChangeNotifier>(),
      lazy: false,
    ),
    ChangeNotifierProvider(
      create: (_) => di<GetRecentActivitiesState>(),
      lazy: false,
    ),
    ChangeNotifierProvider(
      create: (_) => di<GetActivityByIdState>(),
      lazy: false,
    ),
    ChangeNotifierProvider(
      create: (_) => di<GetActivitiesByKeyWordState>(),
      lazy: false,
    ),
  ];
  return providers;
}
