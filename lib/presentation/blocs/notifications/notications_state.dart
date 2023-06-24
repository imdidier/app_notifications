part of 'notications_bloc.dart';

class NoticationsState extends Equatable {
  final List<PushMessage> notifications;

  final AuthorizationStatus status;

  const NoticationsState({
    this.notifications = const [],
    this.status = AuthorizationStatus.notDetermined,
  });

  NoticationsState copyWith({
    AuthorizationStatus? status,
    List<PushMessage>? notifications,
  }) =>
      NoticationsState(
          status: status ?? this.status,
          notifications: notifications ?? this.notifications);
  @override
  List<Object> get props => [status, notifications];
}
