part of 'notications_bloc.dart';

class NoticationsState extends Equatable {
  //TODO: Crear modelo de notificaciones
  final List<dynamic> notifications;

  final AuthorizationStatus status;

  const NoticationsState({
    this.notifications = const [],
    this.status = AuthorizationStatus.notDetermined,
  });

  NoticationsState copyWith({
    AuthorizationStatus? status,
    List<dynamic>? notifications,
  }) =>
      NoticationsState(
          status: status ?? this.status,
          notifications: notifications ?? this.notifications);
  @override
  List<Object> get props => [status, notifications];
}
