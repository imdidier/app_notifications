part of 'notications_bloc.dart';

abstract class NoticationsEvent extends Equatable {
  const NoticationsEvent();

  @override
  List<Object> get props => [];
}

class NotificationStatusChanged extends NoticationsEvent {
  final AuthorizationStatus status;
  const NotificationStatusChanged(this.status);
}

class NotificationReceived extends NoticationsEvent {
  final PushMessage notification;
  const NotificationReceived(this.notification);
}
