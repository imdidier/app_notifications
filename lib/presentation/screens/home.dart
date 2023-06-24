import 'package:app_notifications/presentation/blocs/notifications/notications_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: context.select(
          (NoticationsBloc bloc) => Text('${bloc.state.status}'),
        ),
        actions: [
          IconButton(
            onPressed: () {
              context.read<NoticationsBloc>().requestPermission();
            },
            icon: const Icon(Icons.settings_outlined),
          )
        ],
      ),
      body: const _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView();

  @override
  Widget build(BuildContext context) {
    final notifications = context.watch<NoticationsBloc>().state.notifications;
    return ListView.builder(
      itemCount: notifications.length,
      itemBuilder: (context, index) {
        final notification = notifications[index];
        return ListTile(
          title: Text(notification.title),
          subtitle: Text(notification.title),
          leading: notification.imageUrl != null
              ? Image.network(notification.imageUrl!)
              : const Icon(Icons.notification_add_sharp),
        );
      },
    );
  }
}
